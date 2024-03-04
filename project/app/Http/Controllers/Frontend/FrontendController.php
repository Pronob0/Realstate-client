<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\About;
use App\Models\Advertisement;
use App\Models\Blog;
use App\Models\Category;
use App\Models\ContactMessage;
use App\Models\ContactPage;
use App\Models\Generalsetting;
use App\Models\HeaderSection;
use App\Models\Plan;
use App\Models\Service;
use App\Models\ServiceCategory;
use App\Models\Subscriber;
use App\Models\User;
use App\Models\UserContact;
use App\Models\UserOwnerConversation;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use PHPMailer\PHPMailer\PHPMailer;
use App\Http\Helpers\MediaHelper;
use Illuminate\Support\Str;


class FrontendController extends Controller
{
    
    public function index()
    {
        $gs = Generalsetting::first();
        $category = Category::orderBy('id','DESC')->get();
        $buyers = Advertisement::where('category_id',11)->orderBy('id','DESC')->get();
        $exclusives = Advertisement::where('category_id',12)->orderBy('id','DESC')->get();
        $rooms = Advertisement::where('category_id',13)->orderBy('id','DESC')->get();
        $blogs = Blog::orderBy('id','DESC')->take(3)->get();
        $section = HeaderSection::first();
        return view('frontend.index', compact('gs', 'category', 'buyers', 'exclusives', 'rooms', 'blogs', 'section'));
    }

    public function chooseAdvertCategory(){
        $categories = Category::all();
        return view('frontend.postAdvert', compact('categories'));
    }

    public function plan(){
        $plans = Plan::orderBy('id','DESC')->take(3)->get();
        return view('frontend.plan', compact('plans'));
    }

    public function browseAdvertCategory(){
        $categories = Category::all();
        return view('frontend.browseAdvert', compact('categories'));
    }

    public function browseAdvert(Request $request, $slug, $type){


        $category = Category::where('slug', $slug)->first();
       
        $subs=$category->subcategories;
        $type = $type;
    


        if($category->id == 11){

            if($type == 'rent'){

                $items = Advertisement::where('category_id', $category->id)->where('type', $type)
                ->when($request->budget, function($query, $budget){
                    return $query->where('budget', '<=', $budget);
                })
                // room sizes 
                ->when($request->room_size, function($query, $room_size){
                    return $query->where('room_sizes', $room_size);
                })
                // postcode 
                ->when($request->postcode, function($query, $postcode){
                    return $query->where('postcode', $postcode);
                })
                // json_decode about_flatmate
                ->when($request->gender, function($query, $about_flatmate){
                    return $query->where('about_flatmate', 'LIKE', '%'.$about_flatmate.'%');
                })
                ->paginate(12);
                return view('frontend.browseAdvertCategory', compact('items', 'category', 'subs', 'type'));
            }
            else{

            $items = Advertisement::where('category_id', $category->id)->where('type', $type)
            ->when($request->budget, function($query, $budget){
                return $query->where('budget', '<=', $budget);
            })
            ->when($request->property_type, function($query, $sub_category){
                return $query->where('subcategory_id', $sub_category);
            })
            ->when($request->buyer_type, function($query, $buyer_type){
                return $query->where('buyer_type', $buyer_type);
            })
            ->when($request->buying_for, function($query, $buying_for){
                return $query->where('buying_for', $buying_for);
            })
            ->paginate(12);
            return view('frontend.browseAdvertCategory', compact('items', 'category', 'subs', 'type'));

            }
            
            
        }
        if($category->id == 12){
            $items = Advertisement::where('category_id', $category->id)
            // subcategory
            ->when($request->subcategory, function($query, $sub_category){
                return $query->where('subcategory_id', $sub_category);
            })
            
            ->when($request->region, function($query, $region){
                return $query->where('region', $region);
            })
            // strategy
            ->when($request->strategy, function($query, $strategy){
                return $query->where('strategy', $strategy);
            })
            // table property_type is an array
            ->when($request->property_type, function($query, $property_type){
                return $query->where('property_type', 'LIKE', '%'.$property_type.'%');
            })

            ->paginate(12);
            return view('frontend.browseAdvertCategory', compact('items', 'category', 'subs', 'type'));
        }
        else{
            $items = Advertisement::where('category_id', $category->id)
            
            ->paginate(12);
            return view('frontend.browseAdvertCategory', compact('items', 'category', 'subs', 'type'));
        }

       
    }
    public function advertiseDetails($id){
        $item = Advertisement::findOrFail($id);
        return view('frontend.advertiseDetails', compact('item'));
    }

    public function contactPropertyUser(Request $request){
        $request->validate([
            'phone' => 'required',
            'email' => 'required|email',
            'message' => 'required',
        ]);

    // is not auth 
        if(!auth()->check()){
            return redirect()->back()->with('error', 'You need to login to contact ');
        }
        if(auth()->user()->id == $request->owner_id){
            return redirect()->back()->with('error', 'You cannot contact yourself');
        }
        $owner = User::findOrFail($request->owner_id);
        if(auth()->user()->is_plan == 0 && $owner->is_plan == 0){
            return redirect()->back()->with('error', 'You need to subscribe to a plan to contact ');
        }

        $contact = new UserContact();
        $contact->ticket_number = 'TKT'.str_rand(6);
        $contact->property_id = $request->property_id;
        $contact->user_id = auth()->user()->id;
        $contact->owner_id = $request->owner_id;
        $contact->messages = $request->message;
        $contact->phone = $request->phone;
        if($request->is_service){
            $contact->is_service = 1;
        }
        $contact->save();

        $conversation = new UserOwnerConversation();
        $conversation->user_id = $contact->user_id;
        $conversation->owner_id = $contact->owner_id;
        $conversation->contact_id = $contact->id;
        $conversation->messages = $contact->messages;
        if($request->is_service){
            $contact->is_service = 1;
        }
        $conversation->save();


        require base_path("vendor/autoload.php");
        $mail = new PHPMailer(true);
        $gs=Generalsetting::first();

        try {
            // Email server settings
            $mail->SMTPDebug = 0;
            $mail->isSMTP();
            $mail->Host = $gs->smtp_host;             //  smtp host
            $mail->SMTPAuth = true;
            $mail->Username = $gs->smtp_user;   //  sender username
            $mail->Password = $gs->smtp_pass;       // sender password
            $mail->SMTPSecure =$gs->mail_encryption;                  // encryption - ssl/tls
            $mail->Port = $gs->smtp_port;                          // port - 587/465
            $mail->setFrom(auth()->user()->email,auth()->user()->name);
            $mail->addAddress($owner->email);
            $mail->addReplyTo($owner->email, $owner->name);
            $mail->isHTML(true);  
            if($request->is_service){
                $mail->Subject = 'Service Request';
                
            }     
            else{
                $mail->Subject = 'Contact Property Owner';
            }         // Set email content format to HTML
            // $mail->Subject = 'Contact Property Owner';
            $mail->Body    = $request->message . '<br> Phone: ' . $request->phone . '<br> Email: ' . $request->email;
            // $mail->AltBody = plain text version of email body;
            $mail->send();
 
        } catch (Exception $e) {
            //  dd($e);
        }


        Toastr::success('Message sent successfully', 'Success');
        return redirect()->back();
    }

    public function maintenance(){
        return view('frontend.maintenance');
    }


    public function contact()
    {
        $data['contact']=ContactPage::first();
        
        return view('frontend.contact',$data);
        
    }
    public function contactSubmit(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'subject' => 'required',
            'phone' => 'required',
            'message' => 'required',
        ]);

        $contact_message = new ContactMessage();
        $contact_message->name = $request->name;
        $contact_message->email = $request->email;
        $contact_message->subject = $request->subject;
        $contact_message->phone = $request->phone;
        $contact_message->message = $request->message;
        $contact_message->created_at = now();
        $contact_message->save();
        Toastr::success('Message sent successfully', 'Success');
        return redirect()->back();
    }

    public function about()
    {
        $about= About::first();
        return view('frontend.about',compact('about'));
    }

    public function subscribe(Request $request){

        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
        ]);

        if ($validator->fails()) {
           Toastr::error('Please enter a valid email address', 'Error');
        }
        $subscriber =Subscriber::where('email',$request->email)->first();
        if(!empty($subscriber)){
            Toastr::error('You are already subscribed', 'Error');
           
        }else{
            $data  = new Subscriber();
            $input = $request->all();
            $data->fill($input)->save();
            Toastr::success('You have subscribed successfully', 'Success');
        }
    }

    // service
    public function service()
    {
        $categories = ServiceCategory::orderBy('id','DESC')->get();
        return view('frontend.service.post', compact('categories'));
    }

    public function servicePost(Request $request)
    {
        
        $this->storeData($request, new Service());

        Toastr::success('New blog has been created', 'Success');
        return back();
        
    }

    public function serviceEdit(Service $blog)
    {
        $categories = ServiceCategory::where('status', 1)->get();
        return view('admin.service.edit', compact('blog', 'categories'));
    }

    public function update(Request $request, $id)
    {
        $blog = Service::findOrFail($id);
        $this->storeData($request, $blog, $blog->id);
        Toastr::success('Service has been updated', 'Success');
        return back();  
    }

    public function browseAllServices(){
        $services = Service::orderBy('id','DESC')->paginate(12);
        return view('frontend.service.browse', compact('services'));
    }

    public function serviceDetails($id){

        $service = Service::findOrFail($id);
        return view('frontend.service.details', compact('service'));
    }

    public function storeData($request, $data, $id = null)
    {
        $request->validate([
            'title' => 'required|string|max:255|unique:blogs,title,' . $id,
            'category_id' => 'required|integer',
            'description' => 'required|string',
            'photo' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'budget' => 'required|integer',
            'location' => 'required|string',
            
        ]);

        $data->title = $request->title;
        $data->slug = Str::slug($request->title);
        $data->category_id = $request->category_id;
        $data->description = $request->description;
        $data->budget = $request->budget;
        $data->location = $request->location;
        $data->user_id = auth()->user()->id;
        if(isset($request['photo'])){
            $status = MediaHelper::ExtensionValidation($request['photo']);
            if(!$status){
                return ['errors' => [0=>'file format not supported']];
            }
            if($id){
                $data->photo = MediaHelper::handleUpdateImage($request['photo'],$data->photo);
            }else{
                $data->photo = MediaHelper::handleMakeImage($request['photo']);
            } 
        }
        $data->save();
    }
}
