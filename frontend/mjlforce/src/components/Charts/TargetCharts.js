import React from "react";
import Chart from "react-apexcharts";
export default function TargetCharts() {
  const options = {
    chart: {
      height: 350,
      type: "line",
    },
    stroke: {
      width: [0, 4],
    },
    title: {
      text: "Sales + Target",
    },
    dataLabels: {
      enabled: true,
      enabledOnSeries: [1], // enable only on line (with markers)
    },
    labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun"],
    xaxis: {
      type: "category",
    },
    markers: {
      size: 6,
      colors: ["#FF4560"],
      strokeColors: "#fff",
      strokeWidth: 2,
      hover: {
        size: 8,
      },
    },
    yaxis: [
      {
        title: {
          text: "Sales",
        },
      },
      {
        opposite: true,
        title: {
          text: "Target",
        },
      },
    ],
  };

  const series = [
    {
      name: "Sales",
      type: "column",
      data: [539226, 378762, 462345, 401372, 583084, 708446],
    },
    {
      name: "Target",
      type: "line",
      data: [239419, 239419, 239419, 239419, 239419, 239419],
    },
  ];

  return (
    <div className="w-full max-w-xl mx-auto">
      <Chart options={options} series={series} type="line" height={350} />
    </div>
  );
}
