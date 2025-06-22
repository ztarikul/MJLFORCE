import React from "react";
import Chart from "react-apexcharts";
export default function TargetCharts(props) {
  console.log(props);
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
      props.value.jan_percentage >= 90
        ? "#00E396"
        : props.value.jan_percentage >= 80 && props.value.jan_percentage < 90
        ? "#FEB019"
        : "#FF4560",
      props.value.feb_percentage >= 90
        ? "#00E396"
        : props.value.feb_percentage >= 80 && props.value.feb_percentage < 90
        ? "#FEB019"
        : "#FF4560",
      props.value.mar_percentage >= 90
        ? "#00E396"
        : props.value.mar_percentage >= 80 && props.value.mar_percentage < 90
        ? "#FEB019"
        : "#FF4560",
      props.value.apr_percentage >= 90
        ? "#00E396"
        : props.value.apr_percentage >= 80 && props.value.apr_percentage < 90
        ? "#FEB019"
        : "#FF4560",
      props.value.may_percentage >= 90
        ? "#00E396"
        : props.value.may_percentage >= 80 && props.value.may_percentage < 90
        ? "#FEB019"
        : "#FF4560",
      props.value.jun_percentage >= 90
        ? "#00E396"
        : props.value.jun_percentage >= 80 && props.value.jun_percentage < 90
        ? "#FEB019"
        : "#FF4560",
      props.value.jul_percentage >= 90
        ? "#00E396"
        : props.value.jul_percentage >= 80 && props.value.jul_percentage < 90
        ? "#FEB019"
        : "#FF4560",
      props.value.aug_percentage >= 90
        ? "#00E396"
        : props.value.aug_percentage >= 80 && props.value.aug_percentage < 90
        ? "#FEB019"
        : "#FF4560",
      props.value.sep_percentage >= 90
        ? "#00E396"
        : props.value.sep_percentage >= 80 && props.value.sep_percentage < 90
        ? "#FEB019"
        : "#FF4560",
      props.value.oct_percentage >= 90
        ? "#00E396"
        : props.value.oct_percentage >= 80 && props.value.oct_percentage < 90
        ? "#FEB019"
        : "#FF4560",
      props.value.nov_percentage >= 90
        ? "#00E396"
        : props.value.nov_percentage >= 80 && props.value.nov_percentage < 90
        ? "#FEB019"
        : "#FF4560",
      props.value.dec_percentage >= 90
        ? "#00E396"
        : props.value.dec_percentage >= 80 && props.value.dec_percentage < 90
        ? "#FEB019"
        : "#FF4560",
    ],
    xaxis: {
      // categories: [
      // ],
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
      data: [
        { x: "Jan", y: props.value.jan_percentage },
        { x: "Feb", y: props.value.feb_percentage },
        { x: "Mar", y: props.value.mar_percentage },
        { x: "Apr", y: props.value.apr_percentage },
        { x: "May", y: props.value.may_percentage },
        { x: "Jun", y: props.value.jun_percentage },
        { x: "Jul", y: props.value.jul_percentage },
        { x: "Aug", y: props.value.aug_percentage },
        { x: "Sep", y: props.value.sep_percentage },
        { x: "Oct", y: props.value.oct_percentage },
        { x: "Nov", y: props.value.nov_percentage },
        { x: "Dec", y: props.value.dec_percentage },
      ],
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
