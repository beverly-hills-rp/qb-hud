function generatePizzaPath(radius: number, startAngle: number, endAngle: number, centerX: number, centerY: number) {
    const angleToRadians = (angle: number) => (angle * Math.PI) / 180;
    const calculateCoordinates = (angle: number) => {
        const radians = angleToRadians(angle);
        return {
            x: centerX + radius * Math.cos(radians),
            y: centerY + radius * Math.sin(radians),
        };
    };

    const startCoords = calculateCoordinates(startAngle);
    const endCoords = calculateCoordinates(endAngle);

    const relativeLineEnd = {
        x: startCoords.x - centerX,
        y: startCoords.y - centerY,
    };

    const relativeArcEnd = {
        x: endCoords.x - startCoords.x,
        y: endCoords.y - startCoords.y,
    };

    return `M ${centerX},${centerY} l ${relativeLineEnd.x},${relativeLineEnd.y} a ${radius},${radius} 0 1,1 ${relativeArcEnd.x},${relativeArcEnd.y} z`;
}

export { generatePizzaPath };
