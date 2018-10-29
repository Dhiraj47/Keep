
<nav class="navbar navbar-expand-sm bg-warning navbar-warning justify-content-between fixed-top">
    <div class="container">
        <ul class="navbar-nav col-xl-9">
            <li class="nav-item">
                <a class="navbar-brand" href="#">Google Keep</a>
            </li>

            <li class="nav-item col-xl-8">
                <input class="form-control" type="search" placeholder="Search" aria-label="Search" id="search">
            </li>

            <li class="nav-item">
                <a class="btn btn-outline-dark" href="#" style="font-size: large" data-toggle="modal" data-target="#exampleModal">Make A Note</a>
            </li>
        </ul>
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="<?php echo $href; ?>">Welcome <b><i> <?php echo $_SESSION['name']; ?></i></b></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="php_functions.php?logout">Logout</a>
            </li>
        </ul>
    </div>
</nav>
<br>
<br>
<br>

