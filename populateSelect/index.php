<?php  
    include '../dbConnection/dbConnect.php';

    $query="SELECT * FROM fruits
            Order By fruit_name ASC";
    $getFruits=dbConnect()->prepare($query);
    $getFruits->execute();
    $countFruits=$getFruits->rowCount();
    $fruits=$getFruits->fetchAll(PDO::FETCH_ASSOC);

    // The htmlspecialchars() function in PHP is used to convert special characters to their HTML entities.
    // Certain characters, like <, >, " and &, have special meanings in HTML. If user input contains these characters, they could potentially break your HTML layout or be used to inject malicious code.
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fruits Dropdown</title>
    <style>
        /* Basic CSS reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Container for the form */
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
            background-color: #f0f0f0; /* Light background */
        }

        /* Style the form */
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        select, label {
            font-size: 16px;
            display: block;
            margin-bottom: 10px;
        }

        select {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="container">
    <form>
        <label for="fruits">Choose a fruit:</label>
        <select name="fruits" id="fruits">
            <option value="">--Select from <?= $countFruits ?> fruits--</option>
            <?php foreach ($fruits as $fruit): ?>
                <option value="<?= $fruit['fruit_id']; ?>"><?= htmlspecialchars($fruit['fruit_name']); ?></option>
            <?php endforeach; ?>
        </select>
    </form>
</div>

</body>
</html>