<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Make A Note</h5>
            </div>
            <div class="modal-body">
                <form id="demo" class="row p-3" action="php_functions.php" method="post" enctype="multipart/form-data">

                    <input name="file" type="file" onchange="showImage.call(this)" hidden id="imgPicker">
                    <input type="text" name="title" placeholder="Title" class="form-control mb-2" id="demoTitle">

            <textarea name="content" rows="5" cols="100" style="resize: none;" class="form-control text-info mb-2"
                      placeholder="Take A Note..."></textarea>

                        <input type="text" name="address" placeholder="Address" class="form-control mb-2"><br>
                        Schedule on:
                    <input name="date" type="date" class="form-control DateFrom mb-2">
                        <img class="img-thumbnail mb-2" id="image" style="height: 50%; width: 100%" hidden>

                        <button class="btn btn-outline-success" onclick="imgPicker.click()" type="button">Pick Image</button>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <input class="btn btn-primary" name="make_posts" type="submit" value="Save"/>
            </div>
            </form>
        </div>
    </div>
</div>


<hr>

<script>

    window.onload = function () {
        var e = document.getElementsByClassName('g');
        for (var i = 0; i < e.length; i++)
            e[i].style.display = 'none';
    }

    function showImage() {
        document.getElementById('image').hidden = false;
        if (this.files && this.files[0]) {
            var obj = new FileReader();

            obj.onload = function (data) {
                var image = document.getElementById("image");
                image.src = data.target.result;
                image.style.display = "block";
            };

            obj.readAsDataURL(this.files[0]);
        }
    }
</script>

