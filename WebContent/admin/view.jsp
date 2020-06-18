<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- css样式 -->
<!DOCTYPE html>
<html>
 <head> 
  <meta charset="utf-8" /> 
  <title>数据统计</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
	    <style type="text/css">
	    html, body{
	        margin:0;padding:0;border:0;width:100%;height:100%;overflow:hidden;
	    }    
    </style>
  <!-- 引入 echarts.js --> 
  <script type="text/javascript" src="js/echarts.min.js"></script>
  <script src="./js/echarts.min.js"></script>
   <link rel="stylesheet" href="css/bootstrap.css"/> 
 </head> 
 <body> 
 <div class="container-fluid">

	<%@include file="header.jsp"%>
  <div id="main" style="width: 800px;height:400px;margin:0 auto;float:none;"></div> 
  </div>
  <div id="main" style="width: 800px;height:400px;margin:0 auto;float:none;"></div> 
   <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

option = {
    title: {
        text: '销售额统计',
        subtext: ''
    },
    tooltip: {
        trigger: 'axis',
        axisPointer: {
            type: 'cross'
        }
    },
    toolbox: {
        show: true,
        feature: {
            saveAsImage: {}
        }
    },
    xAxis:  {
        type: 'category',
        boundaryGap: false,
        data: ['00:00', '01:15', '02:30', '03:45', '05:00']
    },
    yAxis: {
        type: 'value',
		max:1000,
		min:0,
        axisLabel: {
            formatter: '{value} 元'
        },
        axisPointer: {
            snap: true
        }
    },
    visualMap: {
    show: false,
    dimension: 1,
    pieces: [],  //pieces的值由动态数据决定
    outOfRange: {
         color: 'black'
    }
  },
    series: [
        {
            name:'销售额',
            type:'line',
            smooth: true,
            data: [30, 28, 25, 26, 27],
			
        }
    ]
  };
  
    //上面是按官方文档固定格式，主要是配置样式布局，实际的x轴和y轴数据可以通过ajax在后台取得
	//x轴数据
	var datax = ['1月', '2月', '3月', '4月', '5月','6月', '7月', '8月', '9月','10月','11月','12月'];  //模拟动态数据
	option.xAxis.data = datax; 
	//y轴数据
	var datay = [0, 0, 0, 0, 0, 0, 222, 343, 127, 333,156,324];  
	option.series[0].data = datay; 
	//400以上,900以下显示成金色(gold)
	option.visualMap.pieces[0] = {gte: 200, lte: 2000, color: 'gold'}; 

    //使用刚指定的配置项和数据显示图表。
     myChart.setOption(option);
   </script>
 </body>
</html>