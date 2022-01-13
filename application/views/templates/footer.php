<h4 style="margin-top: 50px;"></h4>

<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">
<!-- <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="></script> -->
<script src="<?php echo base_url('yangjelasjquery.js') ?>"></script>

<script>
    $('.cekkeaktifan').on('click', function() {
        const keaktifan = $(this).data('keaktifan');
        const id_keaktifan = $(this).data('id_perjanjian');
        console.log(keaktifan);

        $.ajax({
            url: "<?php echo base_url('perjanjian/ubahkeaktifan'); ?>",
            type: 'post',
            data: {
                keaktifan: keaktifan,
                id_keaktifan: id_keaktifan
            },
            success: function() {
                document.location.href = "<?php echo base_url('perjanjian') ?>"
            }
        })
    });
</script>


<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
    -->
</body>

</html>