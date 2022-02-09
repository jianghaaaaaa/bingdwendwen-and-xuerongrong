%% 1.导入
clc
clear
import java.awt.Robot
import java.awt.event.*
img = imread('xuerongrong.png');
img = imresize(img,0.3);
img = im2bw(rgb2gray(img),0.5);
% imshow(img);

%% 2.设置
robot = Robot();
robot.delay(500);

robot.keyPress(KeyEvent.VK_ALT);
robot.keyPress(KeyEvent.VK_TAB);
robot.keyRelease(KeyEvent.VK_ALT);
robot.keyRelease(KeyEvent.VK_TAB);

robot.delay(500);
%% 3.绘制
start = [800,300];
robot.mouseMove(start(1),start(2));

for i = 1:size(img,1)
    robot.mouseMove(start(1),start(2)+i);
    for j = 1:size(img,2)
        robot.mouseMove(start(1)+j,start(2)+i);
        if(img(i,j)==0)
            robot.mousePress(InputEvent.BUTTON1_MASK);
            robot.delay(1);
        else
            robot.mouseRelease(InputEvent.BUTTON1_MASK);
            robot.delay(1);
        end
    end
    robot.mouseRelease(InputEvent.BUTTON1_MASK);
end