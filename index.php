<?php
$conn = new mysqli("localhost", "root", "", "travel_db");
$query = "SELECT * FROM expenditure_stats";
$result = $conn->query($query);
$labels = [];
$data2011 = [];

while($row = $result->fetch_assoc()) {
    $labels[] = $row['component'];
    $data2011[] = $row['exp_2011'];
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Lab 7: Graphic Usage PHP</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body { font-family: Arial; text-align: center; }
        .chart-container { width: 600px; margin: auto; padding: 20px; }
    </style>
</head>
<body>
    <h1>Expenditure by Domestic Visitors (2011)</h1>

    <div class="chart-container">
        <h3>Style 1: Bar Graph</h3>
        <canvas id="barChart"></canvas>
    </div>

    <div class="chart-container">
        <h3>Style 2: Pie Chart</h3>
        <canvas id="pieChart"></canvas>
    </div>

    <script>
        const labels = <?php echo json_encode($labels); ?>;
        const dataValues = <?php echo json_encode($data2011); ?>;

        //Bar Chart
        new Chart(document.getElementById('barChart'), {
            type: 'bar',
            data: {
                labels: labels,
                datasets: [{
                    label: 'RM Million (2011)',
                    data: dataValues,
                    backgroundColor: 'rgba(54, 162, 235, 0.6)'
                }]
            }
        });

        //Pie Chart
        new Chart(document.getElementById('pieChart'), {
            type: 'pie',
            data: {
                labels: labels,
                datasets: [{
                    data: dataValues,
                    backgroundColor: [
                        '#FF6384', '#36A2EB', '#FFCE56', '#4BC0C0', '#9966FF', '#C9CBCF'
                    ]
                }]
            }
        });
    </script>
</body>
</html>