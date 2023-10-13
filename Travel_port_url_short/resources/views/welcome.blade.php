<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>T-portUrl-Shorter</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>

<body>


    <!--navbar-->
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <a class="navbar-brand" href="">
                <div class="d-flex align-items-center">
                    <img src="{{ asset('images/Slide6.PNG') }}" width="70" height="auto" alt="Logo">&nbsp;

                </div>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href='/'>Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/register">Register</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/login">Sign-in</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/links">View Count</a>
                    </li>
                </ul>
                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
    <!--navbar end-->
    <br>
<div class="container">
    <!-- carosal-->
    <div id="carouselExample" class="carousel slide">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="{{ asset('images/Slide4.PNG') }}" alt="Slide4.PNG" class="d-block w-100">
            </div>
        </div>
    </div>
    <!--end carosal-->

    <br>


    <!--form-->
    <div class="py-12">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card">
                        <center>
                            <div class="card-header text-4xl text-primary">Short Your Link</div>
                        </center>
                        <div class="card-body">
                            @if (session('success_message'))
                                {!! session('success_message') !!}
                            @endif
                            <form method="POST" action="{{ route('short.url') }}">
                                @csrf
                                <div class="form-group">
                                    <input class="form-control" type="text" name="original_url">
                                    @error('original_url')
                                        <span class="text-danger m-2 p-2">{{ $message }}</span>
                                    @enderror
                                </div>
                                <br>
                                <div class="d-grid gap-2">
                                    <button class="btn btn-outline-success" type="submit">Short Your Url</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--form end-->

    <br>
    <!--new-->
    <section class="py-0 py-xl-5">
        <div class="container">
            <div class="row g-4">
                <!-- Counter item -->
                <div class="col-sm-6 col-xl-3">
                    <div
                        class="d-flex justify-content-center align-items-center p-4 bg-warning bg-opacity-15 rounded-3">
                        <span class="display-6 lh-1 text-warning mb-0"><i class="fas fa-tv"></i></span>
                        <div class="ms-4 h6 fw-normal mb-0">
                            <div class="d-flex">
                                <h5 class="purecounter mb-0 fw-bold" data-purecounter-start="0"
                                    data-purecounter-end="10" data-purecounter-delay="200"
                                    data-purecounter-duration="0">10</h5>
                                <span class="mb-0 h5">K</span>
                            </div>
                            <p class="mb-0">Online Members</p>
                        </div>
                    </div>
                </div>
                <!-- Counter item -->
                <div class="col-sm-6 col-xl-3">
                    <div class="d-flex justify-content-center align-items-center p-4 bg-info bg-opacity-10 rounded-3">
                        <span class="display-6 lh-1 text-info mb-0"><i class="bi bi-patch-check-fill"></i></span>
                        <div class="ms-4 h6 fw-normal mb-0">
                            <div class="d-flex">
                                <h5 class="purecounter mb-0 fw-bold" data-purecounter-start="0"
                                    data-purecounter-end="6" data-purecounter-delay="300"
                                    data-purecounter-duration="0">6</h5>
                                <span class="mb-0 h5">K+</span>
                            </div>
                            <p class="mb-0">Users</p>
                        </div>
                    </div>
                </div>
                <!-- Counter item -->
                <div class="col-sm-6 col-xl-3">
                    <div
                        class="d-flex justify-content-center align-items-center p-4 bg-warning bg-opacity-15 rounded-3">
                        <span class="display-6 lh-1 text-warning mb-0"><i class="fas fa-tv"></i></span>
                        <div class="ms-4 h6 fw-normal mb-0">
                            <div class="d-flex">
                                <h5 class="purecounter mb-0 fw-bold" data-purecounter-start="0"
                                    data-purecounter-end="10" data-purecounter-delay="200"
                                    data-purecounter-duration="0">10</h5>
                                <span class="mb-0 h5">K</span>
                            </div>
                            <p class="mb-0">New Url</p>
                        </div>
                    </div>
                </div>
                <!-- Counter item -->
                <div class="col-sm-6 col-xl-3">
                    <div class="d-flex justify-content-center align-items-center p-4 bg-info bg-opacity-10 rounded-3">
                        <span class="display-6 lh-1 text-info mb-0"><i class="bi bi-patch-check-fill"></i></span>
                        <div class="ms-4 h6 fw-normal mb-0">
                            <div class="d-flex">
                                <h5 class="purecounter mb-0 fw-bold" data-purecounter-start="0"
                                    data-purecounter-end="6" data-purecounter-delay="300"
                                    data-purecounter-duration="0">6</h5>
                                <span class="mb-0 h5">K+</span>
                            </div>
                            <p class="mb-0">Platforms</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End new-->
    <br>
    <!--card-->
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <div class="col">
            <div class="card h-100">
                <img src="{{ asset('images/Slide1.PNG') }}" class="card-img-top" alt="Slide1.PNG">
                <div class="card-body">
                    <center>
                        <h5 class="card-title">Custom Short Links</h5>
                    </center>
                    <p class="card-text">To Create personalized, memorable short links for your URLs. Customize the
                        destination and brand your shortened links for maximum impact.</p>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100">
                <img src="{{ asset('images/Slide2.PNG') }}" class="card-img-top" alt="Slide1.PNG">
                <div class="card-body">
                    <center>
                        <h5 class="card-title">Detailed Analytics</h5>
                    </center>
                    <p class="card-text">Track your shortened links' performance with detailed analytics. Monitor
                        clicks, geographic locations, and more to gain insights into your audience.</p>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100">
                <img src="{{ asset('images/Slide3.PNG') }}" class="card-img-top" alt="Slide3.PNG">
                <div class="card-body">
                    <center>
                        <h5 class="card-title">Explore Your World Online</h5>
                    </center>
                    <p class="card-text">Dive into a world of endless possibilities on our new website. Discover
                        curated content, connect with like-minded individuals, and unlock a universe of knowledge and
                        entertainment</p>
                </div>
            </div>
        </div>
        <!--card end-->
        <br>
        <!--footer-->
        <div class="container">
            <footer class="py-3 my-4">
                <p class="text-center text-muted">© 2023 Travel Port, Inc</p>
            </footer>
        </div>

        <!--footer end-->
    </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">
        </script>
</body>

</html>
