function plotRisk(timePoints, mortalityRisk, esrdRisk) {

    // Layout for the plot
    const layout = {
        title: 'Risk Over Time',
        xaxis: {
            title: 'Time (years)',
            showgrid: true
        },
        yaxis: {
            title: 'Risk (%)',
            range: [0, 100],
            showgrid: true
        }
    };

    // Create the plot
    Plotly.newPlot('risk-graph', data, layout);
}# flick 20250409213612-SEPJ
# flick 20250409214217-yFff
# flick 20250409214634-5YnZ
# flick 20250409230552-tKGS
# flick 20250409231150-JZeR
# flick 20250410003324-SDNX
