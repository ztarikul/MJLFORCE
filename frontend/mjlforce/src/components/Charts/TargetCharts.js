import React from "react";
import Chart from "react-apexcharts";
export default function TargetCharts() {
  const chartOptions = {
    chart: {
      type: "bar",
    },
    plotOptions: {
      bar: {
        distributed: true,
        horizontal: true,
        columnWidth: "50%",
        endingShape: "rounded",
      },
    },
    dataLabels: {
      enabled: true, // This enables data labels on bars
    },
    colors: [
      "#FF4560",
      "#00E396",
      "#FEB019",
      "#00E396",
      "#00E396",
      "#00E396",
      "#00E396",
      "#00E396",
      "#00E396",
      "#00E396",
      "#00E396",
      "#00E396",
    ],
    xaxis: {
      categories: [
        "Jan",
        "Feb",
        "Mar",
        "Apr",
        "May",
        "Jun",
        "Jul",
        "Aug",
        "Sept",
        "Oct",
        "Nov",
        "Dec",
      ],
    },
    title: {
      text: "Sales vs Target Achievement (%) 2025",
      align: "center",
    },
    legend: {
      show: false, // Disable the legend
    },
  };

  const chartSeries = [
    {
      name: "Sales",
      data: [85, 65, 80, 71, 96, 78, 0, 0, 0, 0, 0, 0],
    },
  ];

  return (
    <div className="p-4">
      <Chart
        options={chartOptions}
        series={chartSeries}
        type="bar"
        height={350}
      />
    </div>
  );
}
