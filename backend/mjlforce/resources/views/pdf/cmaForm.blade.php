<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>{!! $title !!}</title>
    <link rel="stylesheet" href="{{ public_path('assets/css/bootstrap.css') }}">
    <style>
        body {
            font-family: "Times New Roman", Times, serif;
            margin: 20px;
        }

        .customer-info-table th,
        .customer-info-table td {
            border: 1px solid black;
            font-size: 12px;
        }
    </style>

</head>

<body>
    {!! $content !!}

    <script src="{{ public_path('assets/js/bootstrap/bootstrap.min.js') }}"></script>
</body>

</html>
