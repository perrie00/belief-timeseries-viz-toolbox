function plot_opinion_trajectories(X)
% plot_opinion_trajectories
% Visualize opinion trajectories for all agents & topics over time.
%
% INPUT:
%   X : n x m x T matrix
%       n = number of agents
%       m = number of topics
%       T = time steps
%
% Each agent-topic pair is plotted as a separate line:
%   (agent i, topic j) has trajectory X(i,j,1:T)

    % --- Extract dimensions ---
    dims = size(X);
    n = dims(1);  % agents
    m = dims(2);  % topics
    T = dims(3);  % time steps

    % --- Create figure ---
    figure('Name','Opinion Trajectories','NumberTitle','off');
    hold on;

    % --- Plot each agent-topic line ---
    for i = 1:n
        for j = 1:m
            plot( squeeze(X(i,j,:)), ...
                  'DisplayName', sprintf('agent %d, topic %d', i, j), ...
                  'LineWidth', 1.5 );
        end
    end

    % --- Axes & labels ---
    xlabel('Time step','FontSize',12);
    ylabel('Opinion value','FontSize',12);
    title('Opinion Dynamics Over Time','FontSize',14);
    legend('show','Location','bestoutside');
    grid on;
    hold off;

end
