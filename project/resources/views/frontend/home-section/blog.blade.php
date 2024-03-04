<!-- ================================= Blog Grid ================================== -->
<section>
    <div class="container">
    
        <div class="row">
            <div class="col text-center">
                <div class="sec-heading center">
                    <h2>{{ $section->blog_title }}</h2>
                    <p>{{ $section->blog_subtitle }}</p>
                </div>
            </div>
        </div>
        
        <div class="row">

            @foreach ($blogs as $blog)
            <div class="col-lg-4 col-md-6">
                <div class="blog-wrap-grid">
                    
                    <div class="blog-thumb">
                        <a href="{{ route('blog.details',$blog->id) }}"><img src="{{ getPhoto($blog->photo) }}" class="img-fluid" alt="" /></a>
                    </div>
                    
                    <div class="blog-info">
                        <span class="post-date"><i class="ti-calendar"></i>{{ $blog->created_at->format('M d Y') }}</span>
                    </div>
                    
                    <div class="blog-body">
                        <h4 class="bl-title"><a href="{{ route('blog.details',$blog->id)  }}">{{ $blog->title }}</a></h4>
                        <p>{!! Str::limit($blog->description, 30, "...") !!}</p>
                        <a href="{{ route('blog.details',$blog->id) }}" class="bl-continue">Continue</a>
                    </div>
                    
                </div>
            </div>
            @endforeach
        </div>
        
    </div>		
</section>
<!-- ================= Blog Grid End ================= -->
    