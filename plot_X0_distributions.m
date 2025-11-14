function plot_X0_distributions(X0,cfg)
% plot_X0_distributions  Create full visualization for generated X₀
%   - Histograms + theoretical Beta PDFs
%   - Boxplot overview
%   - Correlation heatmap
    %[n,m] = size(X0);
    shp_x0 = size(X0);
    n = shp_x0(1);
    m = shp_x0(2);

    figure('Name','X₀ Visualizations','NumberTitle','off','Position',[100 100 1400 600]);

% --- Subplot 1–m: Histograms with Beta PDF ---
    for j = 1:m
    subplot(2,m,j)
    histogram(X0(:,j),20,'Normalization','pdf','FaceColor',[0.4 0.6 0.9])
    hold on
    x = linspace(0,1,100);
    y = betapdf(x, cfg.mu(j)*cfg.kappa(j), (1-cfg.mu(j))*cfg.kappa(j));
    plot(x,y,'r','LineWidth',1.5)
    hold off
    title(sprintf('Topic %d', j))
    subtitle(sprintf('μ=%.2f, κ=%.1f, σ²=%.3f', mean(X0(:,j)), cfg.kappa(j), var(X0(:,j))))
    xlabel('Opinion Value'); ylabel('Density'); grid on
    end

% --- Boxplot overview ---
    subplot(2,2,3)
    boxchart(X0)
    title('Boxplot of All Topics'); xlabel('Topic'); ylabel('Opinion Value'); grid on

% --- Correlation heatmap ---
    subplot(2,2,4)
    R = corr(X0);
    heatmap(R, 'Title','Cross-Topic Correlation','Colormap',turbo);

end



