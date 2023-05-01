function formatKMH(num: number) {
    if (num < 0 || num > 999)
        num = 0;

    return String(num).padStart(3, '0');
}

export { formatKMH };
