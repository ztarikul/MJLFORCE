<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>{!! $title !!}</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: "Times New Roman", Times, serif;

        }

        .container {
            width: 80%;
            margin: 5px auto;
            border: 1px solid black;
            padding: 10px;
        }

        .header {
            display: inline-block;
            justify-content: space-between;
            align-items: start;
            margin-bottom: 5px;
        }

        .header h1 {
            font-size: 20px;
            margin: 0;
        }

        .header .date {
            display: inline-block;
            align-items: center;
            margin-top: 5px;
        }

        .header .date span {
            margin-right: 2px;
        }

        .section {
            margin-bottom: 5px;
        }

        .section h2 {
            font-size: 16px;
            margin-bottom: 5px;
        }

        .field {
            display: inline-block;
            align-items: center;
            margin-bottom: 5px;
        }

        .field label {
            width: 110px;
            font-size: 10px;
        }

        .field .input {
            display: inLine-block;
            height: 20px;
            width: 100%;
            background-color: lightgray;
            border: 1px solid black;
            font-size: 12px;
        }

        .checkbox {
            width: 20px;
            height: 20px;
            border: 1px solid black;
            display: inline-block;
            text-align: center;
        }

        .footer {
            display: inline-block;
            justify-content: space-between;
            margin-top: 50px;
        }

        .footer .signature {
            width: 30%;
            border-top: 1px solid black;
            text-align: center;
            padding-top: 5px;
        }

        .large-square {
            display: inline-block;
            width: 20px;
            height: 15px;
            border: 1px solid black;
            margin-right: 0px;
            text-align: center;
            font-size: 12px;
        }

        .bin-box {
            width: 15px;
            height: 15px;
            border: 1px solid black;
            display: inline-block;
            margin-right: 2px;
            background: #fff;
            text-align: center;
            font-size: 12px;
        }
    </style>

</head>

<body>
    {!! $content !!}
</body>

</html>
