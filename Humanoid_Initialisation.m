head = [0 0 0];
r_shoulder = head + [-0.4 0 0];
l_shoulder = head + [0.4 0 0];
r_elbow = r_shoulder + [0 0 -0.4];
l_elbow = l_shoulder + [0 0 -0.4];
r_hand =  r_elbow + [0 0 -0.4];
l_hand = l_elbow + [0 0 -0.4];
centre  = head + [0 0 -0.35];
r_hip = head + [-0.3 0 -0.6];
l_hip = head + [0.3 0 -0.6];
r_knee = r_hip + [0 0 -0.6];
l_knee = l_hip + [0 0 -0.6];
r_foot = r_knee + [0 0 -0.6];
l_foot = l_knee + [0 0 -0.6];

rll = plotLineSegment3D(r_foot, r_knee, 'r');
lll = plotLineSegment3D(l_foot, l_knee, 'r');
rul = plotLineSegment3D(r_knee, r_hip, 'g');
lul = plotLineSegment3D(l_knee, l_hip, 'g');
rua = plotLineSegment3D(r_shoulder, r_elbow, 'g');
lua = plotLineSegment3D(l_shoulder, l_elbow, 'g');
rla = plotLineSegment3D(r_elbow, r_hand, 'r');
lla = plotLineSegment3D(l_elbow, l_hand, 'r');

% Plot torso
verticesl = [r_hip; l_hip; centre];
facesl = [1, 2, 3];
stomach = patch('Vertices', verticesl, 'Faces', facesl, 'FaceColor', 'blue');

verticest = [r_shoulder; l_shoulder; centre];
facest = [1, 2, 3];
chest = patch('Vertices', verticest, 'Faces', facest, 'FaceColor', 'blue');

% Adjust axes limits for better visualization
axis equal;
xlim([-2 2]); ylim([-2 2]); zlim([-2 2]);
view(135, 20);
grid on;

% Set labels and title
xlabel('X');
ylabel('Y');
zlabel('Z');
title('3D Plot of Body Parts');


% Animate line rotations
animateLineRotations(l_hand, l_elbow, l_elbow, "x", lla, 1, 45);
lla = plotLineSegment3D(l_elbow, l_hand, 'r');
animateLineRotations(r_hand, r_elbow, r_elbow, "x", rla, 1, 45);
rla = plotLineSegment3D(r_elbow, r_hand, 'r');
animateLineRotations(l_foot, l_knee, l_knee, "x", lll, -1, 45);
lll = plotLineSegment3D(l_foot, l_knee, 'r');
animateLineRotations(r_foot, r_knee, r_knee, "x", rll, -1, 45);
rll = plotLineSegment3D(r_foot, r_knee, 'r');
animateLineRotations([l_elbow; l_hand], [l_shoulder; l_elbow], [l_shoulder; l_shoulder], ["x"; "x"], [lua; lla], [1; 1], [45; 45]);
lua = plotLineSegment3D(l_shoulder, l_elbow, 'g');
lla = plotLineSegment3D(l_elbow, l_hand, 'r');
animateLineRotations([r_elbow; r_hand], [r_shoulder; r_elbow], [r_shoulder; r_shoulder], ["x"; "x"], [rua; rla], [1; 1], [45; 45]);
rua = plotLineSegment3D(r_shoulder, r_elbow, 'g');
rla = plotLineSegment3D(r_elbow, r_hand, 'r');
animateLineRotations([l_elbow; l_hand], [l_shoulder; l_elbow], [l_shoulder; l_shoulder], ["y"; "y"], [lua; lla], [-1; -1], [45; 45]);
lua = plotLineSegment3D(l_shoulder, l_elbow, 'g');
lla = plotLineSegment3D(l_elbow, l_hand, 'r');
animateLineRotations([r_elbow; r_hand], [r_shoulder; r_elbow], [r_shoulder; r_shoulder], ["y"; "y"], [rua; rla], [1; 1], [45; 45]);
rua = plotLineSegment3D(r_shoulder, r_elbow, 'g');
rla = plotLineSegment3D(r_elbow, r_hand, 'r');

animateLineUniRotations([r_elbow; r_hand; l_elbow; l_hand], [r_shoulder; r_elbow; l_shoulder; l_elbow], [r_shoulder; r_shoulder; l_shoulder; l_shoulder], ["x"; "x"; "x"; "x"], [rua; rla; lua; lla], [1; 1; 1; 1], [90; 90; 90; 90]);
delete([rua; rla; lua; lla]);
r_elbow = r_shoulder + [0 0.4 0];
l_elbow = l_shoulder + [0 0.4 0];
r_hand =  r_elbow + [0 0.4 0];
l_hand = l_elbow + [0 0.4 0];
rua = plotLineSegment3D(r_shoulder, r_elbow, 'g');
rla = plotLineSegment3D(r_elbow, r_hand, 'r');
lua = plotLineSegment3D(l_shoulder, l_elbow, 'g');
lla = plotLineSegment3D(l_elbow, l_hand, 'r');

animateLineRotations([l_elbow; l_hand], [l_shoulder; l_elbow], [l_shoulder; l_shoulder], ["z"; "z"], [lua; lla], [-1; -1], [45; 45]);
lua = plotLineSegment3D(l_shoulder, l_elbow, 'g');
lla = plotLineSegment3D(l_elbow, l_hand, 'r');
animateLineRotations([r_elbow; r_hand], [r_shoulder; r_elbow], [r_shoulder; r_shoulder], ["z"; "z"], [rua; rla], [1; 1], [45; 45]);
rua = plotLineSegment3D(r_shoulder, r_elbow, 'g');
rla = plotLineSegment3D(r_elbow, r_hand, 'r');

animateLineRotations([l_knee; l_foot], [l_hip; l_knee], [l_hip; l_hip], ["x"; "x"], [lul; lll], [1; 1], [45; 45]);
lul = plotLineSegment3D(l_hip, l_knee, 'g');
lll = plotLineSegment3D(l_knee, l_foot, 'r');
animateLineRotations([r_knee; r_foot], [r_hip; r_knee], [r_hip; r_hip], ["x"; "x"], [rul; rll], [1; 1], [45; 45]);
rul = plotLineSegment3D(r_hip, r_knee, 'g');
rll = plotLineSegment3D(r_knee, r_foot, 'r');
animateLineRotations([l_knee; l_foot], [l_hip; l_knee], [l_hip; l_hip], ["y"; "y"], [lul; lll], [-1; -1], [45; 45]);
lul = plotLineSegment3D(l_hip, l_knee, 'g');
lll = plotLineSegment3D(l_knee, l_foot, 'r');
animateLineRotations([r_knee; r_foot], [r_hip; r_knee], [r_hip; r_hip], ["y"; "y"], [rul; rll], [1; 1], [45; 45]);
rul = plotLineSegment3D(r_hip, r_knee, 'g');
rll = plotLineSegment3D(r_knee, r_foot, 'r');

animateLineUniRotations([r_knee; r_foot; l_knee; l_foot], [r_hip; r_knee; l_hip; l_knee], [r_hip; r_hip; l_hip; l_hip], ["x"; "x"; "x"; "x"], [rul; rll; lul; lll], [1; 1; 1; 1], [90; 90; 90; 90]);
delete([rul; rll; lul; lll]);
r_knee = r_hip + [0 0.6 0];
l_knee = l_hip + [0 0.6 0];
r_foot =  r_knee + [0 0.6 0];
l_foot = l_knee + [0 0.6 0];
rul = plotLineSegment3D(r_hip, r_knee, 'g');
rll = plotLineSegment3D(r_knee, r_foot, 'r');
lul = plotLineSegment3D(l_hip, l_knee, 'g');
lll = plotLineSegment3D(l_knee, l_foot, 'r');

animateLineRotations([l_knee; l_foot], [l_hip; l_knee], [l_hip; l_hip], ["z"; "z"], [lul; lll], [-1; -1], [45; 45]);
lul = plotLineSegment3D(l_hip, l_knee, 'g');
lll = plotLineSegment3D(l_knee, l_foot, 'r');
animateLineRotations([r_knee; r_foot], [r_hip; r_knee], [r_hip; r_hip], ["z"; "z"], [rul; rll], [1; 1], [45; 45]);
rul = plotLineSegment3D(r_hip, r_knee, 'g');
rll = plotLineSegment3D(r_knee, r_foot, 'r');


for i = ["x","y","z"]
    for th = 0:1:180
        delete([lua;rua;lla;rla;chest])
        if th <= 90
            if th <= 45
                angle = th;
            else
                angle = 90 - th;
            end
        else
            if th - 90 <= 45
                angle = 90 - th;
            else
                angle = 180 + th;
            end
        end
        
        S1rot = rotatePointsAroundPoints(r_shoulder, centre, i, -angle); 
        S2rot = rotatePointsAroundPoints(l_shoulder, centre, i, -angle); 
        E1rot = rotatePointsAroundPoints(r_elbow, centre, i, -angle);
        E2rot = rotatePointsAroundPoints(l_elbow, centre, i, -angle);
        H1rot = rotatePointsAroundPoints(r_hand, centre, i, -angle);
        H2rot = rotatePointsAroundPoints(l_hand, centre, i, -angle);
    
        line_handles = gobjects(4, 1);  
    
        line_handles(1) = plot3([S2rot(1), E2rot(1)], [S2rot(2), E2rot(2)], [S2rot(3), E2rot(3)], 'g', 'LineWidth', 2);
        line_handles(2) = plot3([E2rot(1), H2rot(1)], [E2rot(2), H2rot(2)], [E2rot(3), H2rot(3)], 'r', 'LineWidth', 2);
        line_handles(3) = plot3([S1rot(1), E1rot(1)], [S1rot(2), E1rot(2)], [S1rot(3), E1rot(3)], 'g', 'LineWidth', 2);
        line_handles(4) = plot3([E1rot(1), H1rot(1)], [E1rot(2), H1rot(2)], [E1rot(3), H1rot(3)], 'r', 'LineWidth', 2);
        vertices = [S1rot; S2rot; centre];
        faces = [1 2 3];
        patch_handle = patch('Vertices', vertices, 'Faces', faces, 'FaceColor', 'b');
        drawnow;
        pause(0.01);
        
        delete(line_handles);
        delete(patch_handle);
    end
    
    rua = plotLineSegment3D(r_shoulder, r_elbow, 'g');
    rla = plotLineSegment3D(r_elbow, r_hand, 'r');
    lua = plotLineSegment3D(l_shoulder, l_elbow, 'g');
    lla = plotLineSegment3D(l_elbow, l_hand, 'r');
    verticest = [r_shoulder; l_shoulder; centre];
    facest = [1, 2, 3];
    chest = patch('Vertices', verticest, 'Faces', facest, 'FaceColor', 'blue');
end




function line_handle = plotLineSegment3D(point1, point2, color)
    x = [point1(1), point2(1)];
    y = [point1(2), point2(2)];
    z = [point1(3), point2(3)];
    hold on;
    line_handle = plot3(x, y, z, color, 'LineWidth', 2);
end


function animateLineRotations(points, initial_point, centers, axes_of_rotation, lines, reverses, angle)
    angle_increment = 1;
    num_frames = angle / angle_increment;
    
    % Create line handles for each line
    line_handles = gobjects(size(lines));
    for i = 1:numel(lines)
        line_handles(i) = plot3([initial_point(i, 1), points(i, 1)], [initial_point(i, 2), points(i, 2)], [initial_point(i, 3), points(i, 3)], 'LineWidth', get(lines(i), 'LineWidth'), 'Color', get(lines(i), 'Color'));
        delete(lines(i));
    end

    for i = 1:num_frames
        rotated_points = rotatePointsAroundPoints(points, centers, axes_of_rotation, reverses .* angle_increment * i);
        rotated_initial_point = rotatePointsAroundPoints(initial_point, centers, axes_of_rotation, reverses .* angle_increment * i);
        for j = 1:numel(lines)
            set(line_handles(j), 'XData', [rotated_initial_point(j, 1), rotated_points(j, 1)], 'YData', [rotated_initial_point(j, 2), rotated_points(j, 2)], 'ZData', [rotated_initial_point(j, 3), rotated_points(j, 3)]);
        end
        pause(0.01);
        drawnow;
    end
    
    for i = num_frames:-1:1
        rotated_points = rotatePointsAroundPoints(points, centers, axes_of_rotation, reverses .* angle_increment * i);
        rotated_initial_point = rotatePointsAroundPoints(initial_point, centers, axes_of_rotation, reverses .* angle_increment * i);
        for j = 1:numel(lines)
            set(line_handles(j), 'XData', [rotated_initial_point(j, 1), rotated_points(j, 1)], 'YData', [rotated_initial_point(j, 2), rotated_points(j, 2)], 'ZData', [rotated_initial_point(j, 3), rotated_points(j, 3)]);
        end
        pause(0.01);
        drawnow;
    end
    delete(line_handles);

end

function animateLineUniRotations(points, initial_point, centers, axes_of_rotation, lines, reverses, angle)
    angle_increment = 1;
    num_frames = angle / angle_increment;
    
    % Create line handles for each line
    line_handles = gobjects(size(lines));
    for i = 1:numel(lines)
        line_handles(i) = plot3([initial_point(i, 1), points(i, 1)], [initial_point(i, 2), points(i, 2)], [initial_point(i, 3), points(i, 3)], 'LineWidth', get(lines(i), 'LineWidth'), 'Color', get(lines(i), 'Color'));
        delete(lines(i));
    end

    for i = 1:num_frames
        rotated_points = rotatePointsAroundPoints(points, centers, axes_of_rotation, reverses .* angle_increment * i);
        rotated_initial_point = rotatePointsAroundPoints(initial_point, centers, axes_of_rotation, reverses .* angle_increment * i);
        for j = 1:numel(lines)
            set(line_handles(j), 'XData', [rotated_initial_point(j, 1), rotated_points(j, 1)], 'YData', [rotated_initial_point(j, 2), rotated_points(j, 2)], 'ZData', [rotated_initial_point(j, 3), rotated_points(j, 3)]);
        end
        pause(0.01);
        drawnow;
    end
    
    % Deleting line handles at the end
    delete(line_handles);
end


function rotated_points = rotatePointsAroundPoints(points, centers, axes, angles)
    angles = deg2rad(angles);
    num_points = size(points, 1);
    rotated_points = zeros(num_points, 3);
    for i = 1:num_points
        translated_point = points(i, :) - centers(i, :);
        axis = axes(i);
        if axis == "x"
            Rx = [1, 0, 0; 0, cos(angles(i)), -sin(angles(i)); 0, sin(angles(i)), cos(angles(i))];
            rotated_translated_point = Rx * translated_point';
        elseif axis == "y"
            Ry = [cos(angles(i)), 0, sin(angles(i)); 0, 1, 0; -sin(angles(i)), 0, cos(angles(i))];
            rotated_translated_point = Ry * translated_point';
        elseif axis == "z"
            Rz = [cos(angles(i)), -sin(angles(i)), 0; sin(angles(i)), cos(angles(i)), 0; 0, 0, 1];
            rotated_translated_point = Rz * translated_point';
        else
            error('Invalid rotation axis. Use "x", "y", or "z".');
        end
        rotated_points(i, :) = (rotated_translated_point' + centers(i, :));
    end
end

