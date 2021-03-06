classdef(Abstract) BasisGenQDyn < Dyn
    %BASISGENQDYN wird von MAPLE/PYTHON generiert und enthaelt die
    %Berechnung der Ableitungen
    
    properties
        F;
        J;
        H;
        
    end
    
    properties(GetAccess=private, SetAccess = protected)
        isEmptyF;
        isEmptyJ;
        isEmptyH;
    end
    
    methods
        function cBGQD = BasisGenQDyn()
            cBGQD@Dyn();
            cBGQD.emptyResults();
        end
        
        function emptyResults(obj)
            
            obj.F   = [];
            obj.J  = [];
            obj.H = [];
            
            obj.isEmptyF = true;
            obj.isEmptyJ = true;
            obj.isEmptyH = true;
        end
        
        function res = get.F(obj)
            if obj.isEmptyF
                [q,v,omega,u,Iges,IM,m,kT,kQ,d,g] = getParams(obj);
                
                t142 = q(4, :);
t125 = t142 .^ 2;
t143 = q(3, :);
t126 = t143 .^ 2;
t144 = q(2, :);
t127 = t144 .^ 2;
t145 = q(1, :);
t180 = 1 - t127 - t145 .^ 2 - t125 - t126;
t175 = -2 .* t125;
t174 = -2 .* t126;
t173 = (d .* kT);
t172 = -t142 ./ 0.2e1;
t171 = -t143 ./ 0.2e1;
t170 = -t144 ./ 0.2e1;
t169 = t145 ./ 0.2e1;
t168 = 1 - 2 .* t127;
t167 = t143 .* t142;
t166 = t144 .* t142;
t165 = t144 .* t143;
t164 = t145 .* t142;
t163 = t145 .* t143;
t162 = t145 .* t144;
t138 = u(4, :);
t121 = (t138 .^ 2);
t140 = u(2, :);
t123 = (t140 .^ 2);
t161 = (-t121 - t123);
t139 = u(3, :);
t122 = (t139 .^ 2);
t141 = u(1, :);
t124 = (t141 .^ 2);
t160 = (t122 + t124);
t159 = 2 .* g;
t135 = v(3, :);
t158 = 2 .* t135;
t136 = v(2, :);
t157 = 2 .* t136;
t137 = v(1, :);
t156 = 2 .* t137;
t154 = t174 + t168;
t152 = t163 - t166;
t151 = -t162 - t167;
t150 = ((t139 - t138 + t141 - t140) .* IM);
t134 = Iges(1);
t133 = Iges(2);
t132 = Iges(3);
t131 = omega(1, :);
t130 = omega(2, :);
t129 = omega(3, :);
t1 = [((1 + t174 + t175) .* t137) + (-t164 + t165) .* t157 + (t163 + t166) .* t158; (t164 + t165) .* t156 + ((t175 + t168) .* t136) + (-t162 + t167) .* t158; -t152 .* t156 - t151 .* t157 + (t154 .* t135); t131 .* t170 + t130 .* t171 + t129 .* t172 + (t180 .* t145); t131 .* t169 + t130 .* t172 + t143 .* t129 ./ 0.2e1 + t180 .* t144; t142 .* t131 ./ 0.2e1 + t130 .* t169 + t129 .* t170 + t180 .* t143; t131 .* t171 + t144 .* t130 ./ 0.2e1 + t129 .* t169 + t180 .* t142; -t130 .* t135 + t129 .* t136 + t152 .* t159; -t129 .* t137 + t131 .* t135 + t151 .* t159; ((t160 - t161) .* kT + (-t131 .* t136 + t130 .* t137 - (t154 .* g)) .* m) ./ m; -((-t123 + t121) .* t173 + ((t132 - t133) .* t129 + t150) .* t130) ./ t134; ((-t124 + t122) .* t173 + ((-t134 + t132) .* t129 + t150) .* t131) ./ t133; -((t133 - t134) .* t131 .* t130 + (t160 + t161) .* kQ) ./ t132;];

                
                obj.F = t1;
                obj.isEmptyF = false;
            end
            res = obj.F;
        end
        
        function res = get.J(obj)
            if obj.isEmptyJ
                [q,v,omega,u,Iges,IM,m,kT,kQ,d,g] = getParams(obj);
                
                t444 = d .* kT;
t412 = q(3, :);
t443 = g .* t412;
t413 = q(2, :);
t442 = g .* t413;
t414 = q(1, :);
t441 = g .* t414;
t396 = t413 .^ 2;
t440 = 1 - 2 .* t396;
t399 = omega(2, :);
t439 = IM .* t399;
t401 = Iges(3);
t391 = 1 ./ t401;
t438 = kQ .* t391;
t437 = -2 .* t444;
t436 = 2 .* t444;
t402 = Iges(2);
t392 = 0.1e1 ./ t402;
t400 = omega(1, :);
t435 = (t392 .* t400);
t403 = Iges(1);
t393 = 0.1e1 ./ t403;
t434 = (t393 .* t399);
t404 = v(3, :);
t433 = t404 .* t413;
t432 = t404 .* t414;
t405 = v(2, :);
t411 = q(4, :);
t431 = t405 .* t411;
t430 = t405 .* t414;
t406 = v(1, :);
t429 = t406 .* t412;
t428 = t406 .* t414;
t427 = t414 .* t411;
t426 = t414 .* t412;
t425 = t414 .* t413;
t424 = -2 .* t438;
t423 = 2 .* t438;
t422 = 2 .* kT ./ m;
t394 = t411 .^ 2;
t395 = t412 .^ 2;
t421 = 1 - t394 - t395;
t397 = t414 .^ 2;
t420 = 1 - t396 - t397;
t419 = IM .* t434;
t418 = IM .* t435;
t417 = (t391 .* (t402 - t403));
t398 = omega(3, :);
t407 = u(4, :);
t408 = u(3, :);
t409 = u(2, :);
t410 = u(1, :);
t416 = (t401 .* t398 + (t408 + t410 - t407 - t409) .* IM);
t390 = t414 ./ 0.2e1;
t389 = -t413 ./ 0.2e1;
t388 = -t412 ./ 0.2e1;
t387 = -t411 ./ 0.2e1;
t385 = -2 .* t395;
t384 = -2 .* t394;
t381 = -t400 ./ 0.2e1;
t380 = t400 ./ 0.2e1;
t379 = -t399 ./ 0.2e1;
t378 = t399 ./ 0.2e1;
t377 = -t398 ./ 0.2e1;
t376 = t398 ./ 0.2e1;
t375 = -2 .* t442;
t374 = -0.2e1 .* g .* t411;
t373 = IM .* t400;
t372 = t413 .* t412;
t371 = t413 .* t411;
t370 = t412 .* t411;
t369 = t406 .* t413;
t368 = t406 .* t411;
t367 = t405 .* t413;
t366 = t405 .* t412;
t365 = t404 .* t412;
t364 = t404 .* t411;
t363 = -2 .* t425;
t362 = -2 .* t426;
t361 = -2 .* t427;
t360 = -0.2e1 .* t372;
t359 = -0.2e1 .* t371;
t358 = -0.2e1 .* t370;
t1 = [1 4 -(2 .* t431) + 0.2e1 .* t365; 1 5 0.2e1 .* t366 + 0.2e1 .* t364; 1 6 -(4 .* t429) + 0.2e1 .* t367 + (2 .* t432); 1 7 -0.4e1 .* t368 - (2 .* t430) + (2 .* t433); 1 8 1 + t385 + t384; 1 9 -(2 .* t427) + 0.2e1 .* t372; 1 10 (2 .* t426) + 0.2e1 .* t371; 2 4 0.2e1 .* t368 - (2 .* t433); 2 5 (2 .* t429) - 0.4e1 .* t367 - (2 .* t432); 2 6 0.2e1 .* t369 + 0.2e1 .* t364; 2 7 (2 .* t428) - (4 .* t431) + 0.2e1 .* t365; 2 8 (2 .* t427) + 0.2e1 .* t372; 2 9 t384 + t440; 2 10 -(2 .* t425) + 0.2e1 .* t370; 3 4 -(2 .* t429) + 0.2e1 .* t367; 3 5 0.2e1 .* t368 + (2 .* t430) - (4 .* t433); 3 6 -(2 .* t428) + (2 .* t431) - 0.4e1 .* t365; 3 7 0.2e1 .* t369 + 0.2e1 .* t366; 3 8 -(2 .* t426) + 0.2e1 .* t371; 3 9 (2 .* t425) + 0.2e1 .* t370; 3 10 t385 + t440; 4 4 -3 .* t397 - t396 + t421; 4 5 t381 + t363; 4 6 t379 + t362; 4 7 t377 + t361; 4 11 t389; 4 12 t388; 4 13 t387; 5 4 t380 + t363; 5 5 -t397 - 3 .* t396 + t421; 5 6 t376 + t360; 5 7 t379 + t359; 5 11 t390; 5 12 t387; 5 13 t412 ./ 0.2e1; 6 4 t378 + t362; 6 5 t377 + t360; 6 6 -3 .* t395 - t394 + t420; 6 7 t380 + t358; 6 11 t411 ./ 0.2e1; 6 12 t390; 6 13 t389; 7 4 t376 + t361; 7 5 t378 + t359; 7 6 t381 + t358; 7 7 -t395 - 3 .* t394 + t420; 7 11 t388; 7 12 t413 ./ 0.2e1; 7 13 t390; 8 4 2 .* t443; 8 5 t374; 8 6 2 .* t441; 8 7 t375; 8 9 t398; 8 10 -t399; 8 12 -t404; 8 13 t405; 9 4 t375; 9 5 -2 .* t441; 9 6 t374; 9 7 -2 .* t443; 9 8 -t398; 9 10 t400; 9 11 t404; 9 13 -t406; 10 5 4 .* t442; 10 6 4 .* t443; 10 8 t399; 10 9 -t400; 10 11 -t405; 10 12 t406; 10 14 t410 .* t422; 10 15 t409 .* t422; 10 16 t408 .* t422; 10 17 t407 .* t422; 11 12 -(-t398 .* t402 + t416) .* t393; 11 13 -(t401 - t402) .* t434; 11 14 -t419; 11 15 -(t409 .* t437 - t439) .* t393; 11 16 -t419; 11 17 -(t407 .* t436 - t439) .* t393; 12 11 (-t398 .* t403 + t416) .* t392; 12 13 (-t403 + t401) .* t435; 12 14 ((t410 .* t437) + t373) .* t392; 12 15 -t418; 12 16 ((t408 .* t436) + t373) .* t392; 12 17 -t418; 13 11 -t399 .* t417; 13 12 -t400 .* t417; 13 14 t410 .* t424; 13 15 t409 .* t423; 13 16 t408 .* t424; 13 17 t407 .* t423;];

                
                obj.J = t1;
                obj.isEmptyJ = false;
            end
            res = obj.J;
        end
        
        function res = get.H(obj)
            if obj.isEmptyH
                [q,v,omega,u,Iges,IM,m,kT,kQ,d,g] = getParams(obj);
                
                onesV = ones(1, obj.environment.n_timepoints); %Korregiere die Matrix Dimension
                
                t636 = g .* onesV;
t635 = kT .* onesV;
t609 = Iges(3);
t634 = onesV ./ t609;
t610 = Iges(2);
t605 = 1 ./ t610;
t633 = onesV .* t605;
t611 = Iges(1);
t606 = 1 ./ t611;
t632 = onesV .* t606;
t631 = v(3, :) .* onesV;
t630 = v(2, :) .* onesV;
t629 = v(1, :) .* onesV;
t628 = q(4, :) .* onesV;
t627 = q(3, :) .* onesV;
t626 = q(2, :) .* onesV;
t625 = q(1, :) .* onesV;
t624 = d .* t635;
t623 = kQ .* t634;
t622 = (t609 - t610) .* t632;
t621 = (t610 - t611) .* t634;
t620 = t605 .* t624;
t619 = t606 .* t624;
t608 = -onesV ./ 0.2e1;
t607 = onesV ./ 0.2e1;
t603 = -2 .* t636;
t602 = 2 .* t636;
t601 = 4 .* t636;
t600 = 2 ./ m .* t635;
t599 = -2 .* t625;
t598 = 2 .* t625;
t597 = -4 .* t626;
t596 = -2 .* t626;
t595 = 2 .* t626;
t594 = -4 .* t627;
t593 = -2 .* t627;
t592 = 2 .* t627;
t591 = -4 .* t628;
t590 = -2 .* t628;
t589 = 2 .* t628;
t588 = -4 .* t629;
t587 = -2 .* t629;
t586 = 2 .* t629;
t585 = -4 .* t630;
t584 = -2 .* t630;
t583 = 2 .* t630;
t582 = -4 .* t631;
t581 = -2 .* t631;
t580 = 2 .* t631;
t579 = IM .* t632;
t578 = IM .* t633;
t575 = -2 .* t623;
t574 = 2 .* t623;
t573 = (-t611 + t609) .* t633;
t1 = [1 4 6 t580; 1 4 7 t584; 1 4 9 t590; 1 4 10 t592; 1 5 6 t583; 1 5 7 t580; 1 5 9 t592; 1 5 10 t589; 1 6 4 t580; 1 6 5 t583; 1 6 6 t588; 1 6 8 t594; 1 6 9 t595; 1 6 10 t598; 1 7 4 t584; 1 7 5 t580; 1 7 7 t588; 1 7 8 t591; 1 7 9 t599; 1 7 10 t595; 1 8 6 t594; 1 8 7 t591; 1 9 4 t590; 1 9 5 t592; 1 9 6 t595; 1 9 7 t599; 1 10 4 t592; 1 10 5 t589; 1 10 6 t598; 1 10 7 t595; 2 4 5 t581; 2 4 7 t586; 2 4 8 t589; 2 4 10 t596; 2 5 4 t581; 2 5 5 t585; 2 5 6 t586; 2 5 8 t592; 2 5 9 t597; 2 5 10 t599; 2 6 5 t586; 2 6 7 t580; 2 6 8 t595; 2 6 10 t589; 2 7 4 t586; 2 7 6 t580; 2 7 7 t585; 2 7 8 t598; 2 7 9 t591; 2 7 10 t592; 2 8 4 t589; 2 8 5 t592; 2 8 6 t595; 2 8 7 t598; 2 9 5 t597; 2 9 7 t591; 2 10 4 t596; 2 10 5 t599; 2 10 6 t589; 2 10 7 t592; 3 4 5 t583; 3 4 6 t587; 3 4 8 t593; 3 4 9 t595; 3 5 4 t583; 3 5 5 t582; 3 5 7 t586; 3 5 8 t589; 3 5 9 t598; 3 5 10 t597; 3 6 4 t587; 3 6 6 t582; 3 6 7 t583; 3 6 8 t599; 3 6 9 t589; 3 6 10 t594; 3 7 5 t586; 3 7 6 t583; 3 7 8 t595; 3 7 9 t592; 3 8 4 t593; 3 8 5 t589; 3 8 6 t599; 3 8 7 t595; 3 9 4 t595; 3 9 5 t598; 3 9 6 t589; 3 9 7 t592; 3 10 5 t597; 3 10 6 t594; 4 4 4 -6 .* t625; 4 4 5 t596; 4 4 6 t593; 4 4 7 t590; 4 5 4 t596; 4 5 5 t599; 4 5 11 t608; 4 6 4 t593; 4 6 6 t599; 4 6 12 t608; 4 7 4 t590; 4 7 7 t599; 4 7 13 t608; 4 11 5 t608; 4 12 6 t608; 4 13 7 t608; 5 4 4 t596; 5 4 5 t599; 5 4 11 t607; 5 5 4 t599; 5 5 5 -6 .* t626; 5 5 6 t593; 5 5 7 t590; 5 6 5 t593; 5 6 6 t596; 5 6 13 t607; 5 7 5 t590; 5 7 7 t596; 5 7 12 t608; 5 11 4 t607; 5 12 7 t608; 5 13 6 t607; 6 4 4 t593; 6 4 6 t599; 6 4 12 t607; 6 5 5 t593; 6 5 6 t596; 6 5 13 t608; 6 6 4 t599; 6 6 5 t596; 6 6 6 -6 .* t627; 6 6 7 t590; 6 7 6 t590; 6 7 7 t593; 6 7 11 t607; 6 11 7 t607; 6 12 4 t607; 6 13 5 t608; 7 4 4 t590; 7 4 7 t599; 7 4 13 t607; 7 5 5 t590; 7 5 7 t596; 7 5 12 t607; 7 6 6 t590; 7 6 7 t593; 7 6 11 t608; 7 7 4 t599; 7 7 5 t596; 7 7 6 t593; 7 7 7 -6 .* t628; 7 11 6 t608; 7 12 5 t607; 7 13 4 t607; 8 4 6 t602; 8 5 7 t603; 8 6 4 t602; 8 7 5 t603; 8 9 13 onesV; 8 10 12 -onesV; 8 12 10 -onesV; 8 13 9 onesV; 9 4 5 t603; 9 5 4 t603; 9 6 7 t603; 9 7 6 t603; 9 8 13 -onesV; 9 10 11 onesV; 9 11 10 onesV; 9 13 8 -onesV; 10 5 5 t601; 10 6 6 t601; 10 8 12 onesV; 10 9 11 -onesV; 10 11 9 -onesV; 10 12 8 onesV; 10 14 14 t600; 10 15 15 t600; 10 16 16 t600; 10 17 17 t600; 11 12 13 -t622; 11 12 14 -t579; 11 12 15 t579; 11 12 16 -t579; 11 12 17 t579; 11 13 12 -t622; 11 14 12 -t579; 11 15 12 t579; 11 15 15 2 .* t619; 11 16 12 -t579; 11 17 12 t579; 11 17 17 -2 .* t619; 12 11 13 t573; 12 11 14 t578; 12 11 15 -t578; 12 11 16 t578; 12 11 17 -t578; 12 13 11 t573; 12 14 11 t578; 12 14 14 -2 .* t620; 12 15 11 -t578; 12 16 11 t578; 12 16 16 2 .* t620; 12 17 11 -t578; 13 11 12 -t621; 13 12 11 -t621; 13 14 14 t575; 13 15 15 t574; 13 16 16 t575; 13 17 17 t574;];

                
                obj.H = t1;
                obj.isEmptyH = false;
            end
            res = obj.H;
        end
        
        function [q,v,omega,u,Iges,IM,m,kT,kQ,d,g] = getParams(obj, varargin)
            
            if nargin == 3            
                y = varargin{1};
                u = varargin{2};
            else
                y = obj.state;
                u   = obj.contr;
            end
            q   = y(4:7    , :);
            v   = y(8:10   , :);
            omega   = y(11:13  , :);
            
            
            
            Iges = obj.robot.I;
            IM = obj.robot.I_M;
            m = obj.robot.m;
            
            kT  = obj.robot.kT;
            kQ  = obj.robot.kQ;
            d   = obj.robot.d;
            g   = obj.environment.g;
        end
        
    end
    
end