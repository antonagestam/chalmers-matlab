function plot_normal(t, x, y, dx, dy)
    s = [-1 1];
    x0 = x(t);
    y0 = y(t);
    dx0 = dx(t);
    dy0 = dy(t);
    plot(x0+s*dx0, y0+s*dy0, 'm')
    plot(x0+s*dy0, y0-s*dx0, 'c')
end

