import React from "react";
import Chart from "react-apexcharts";
export default function TargetCharts(props) {
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
      data: [
        props.value.jan_percentage,
        props.value.feb_percentage,
        props.value.mar_percentage,
        props.value.apr_percentage,
        props.value.may_percentage,
        props.value.jun_percentage,
        props.value.jul_percentage,
        props.value.aug_percentage,
        props.value.sep_percentage,
        props.value.oct_percentage,
        props.value.nov_percentage,
        props.value.dec_percentage,
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
