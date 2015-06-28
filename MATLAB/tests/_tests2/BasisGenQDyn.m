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
            cBGQD.emptyResults();
        end
        
        function emptyResults(obj)
            emptyResults@Dyn(obj);
            obj.F   = [];
            obj.J  = [];
            obj.H = [];
            
            obj.isEmptyF = true;
            obj.isEmptyJ = true;
            obj.isEmptyH = true;
        end
        function res = getF(obj, ByState)
            
            [q,v,omega,u,Iges,IM,m,kT,kQ,d,g] = obj.getParams(ByState);
                
            t147 = -2 * g;
t119 = v(3);
t146 = 2 * t119;
t120 = v(2);
t145 = 2 * t120;
t121 = v(1);
t144 = 2 * t121;
t143 = (d * kT);
t130 = 0.1e1 / m;
t142 = (m * t130);
t126 = q(4);
t141 = -t126 / 0.2e1;
t127 = q(3);
t140 = -t127 / 0.2e1;
t128 = q(2);
t139 = -t128 / 0.2e1;
t129 = q(1);
t138 = t129 / 0.2e1;
t137 = 0.1e1 - 0.2e1 * t128 ^ 2;
t122 = u(4);
t123 = u(3);
t124 = u(2);
t125 = u(1);
t136 = ((t125 - t124 + t123 - t122) * IM);
t135 = t129 * t126;
t134 = t129 * t127;
t133 = t129 * t128;
t109 = (t122 ^ 2);
t111 = (t124 ^ 2);
t132 = (t109 + t111);
t110 = (t123 ^ 2);
t112 = (t125 ^ 2);
t131 = (-t110 - t112);
t118 = Iges(1);
t117 = Iges(2);
t116 = Iges(3);
t115 = omega(1);
t114 = omega(2);
t113 = omega(3);
t107 = -0.2e1 * t127 ^ 2;
t106 = -0.2e1 * t126 ^ 2;
t105 = t128 * t127;
t104 = t128 * t126;
t103 = t127 * t126;
t102 = t107 + t137;
t100 = t133 + t103;
t99 = -t134 + t104;
t1 = [(0.1e1 + t107 + t106) * t121 + (-t135 + t105) * t145 + (t134 + t104) * t146; (t106 + t137) * t120 + (t135 + t105) * t144 + (-t133 + t103) * t146; t102 * t119 + t99 * t144 + t100 * t145; t115 * t139 + t114 * t140 + t113 * t141; t115 * t138 + t114 * t141 + t127 * t113 / 0.2e1; t126 * t115 / 0.2e1 + t114 * t138 + t113 * t139; t115 * t140 + t128 * t114 / 0.2e1 + t113 * t138; (-t114 * t119 + t113 * t120 + t99 * t147) * t142; (-t113 * t121 + t115 * t119 + t100 * t147) * t142; t130 * (kT * (-t131 + t132) + (-t115 * t120 + t114 * t121 - t102 * g) * m); 0.1e1 / t118 * ((-t109 + t111) * t143 + (-t136 + (-t116 + t117) * t113) * t114); 0.1e1 / t117 * ((t110 - t112) * t143 + (t136 + (-t118 + t116) * t113) * t115); 0.1e1 / t116 * ((-t117 + t118) * t115 * t114 + (t131 + t132) * kQ);];

            
            res = t1; 
        end
        function res = get.F(obj)
            if obj.isEmptyF
                 [q,v,omega,u,Iges,IM,m,kT,kQ,d,g] = obj.getParams();

                 t147 = -2 .* g;
t119 = v(3, :);
t146 = 2 .* t119;
t120 = v(2, :);
t145 = 2 .* t120;
t121 = v(1, :);
t144 = 2 .* t121;
t143 = (d .* kT);
t130 = 0.1e1 ./ m;
t142 = (m .* t130);
t126 = q(4, :);
t141 = -t126 ./ 0.2e1;
t127 = q(3, :);
t140 = -t127 ./ 0.2e1;
t128 = q(2, :);
t139 = -t128 ./ 0.2e1;
t129 = q(1, :);
t138 = t129 ./ 0.2e1;
t137 = 0.1e1 - 0.2e1 .* t128 .^ 2;
t122 = u(4, :);
t123 = u(3, :);
t124 = u(2, :);
t125 = u(1, :);
t136 = ((t125 - t124 + t123 - t122) .* IM);
t135 = t129 .* t126;
t134 = t129 .* t127;
t133 = t129 .* t128;
t109 = (t122 .^ 2);
t111 = (t124 .^ 2);
t132 = (t109 + t111);
t110 = (t123 .^ 2);
t112 = (t125 .^ 2);
t131 = (-t110 - t112);
t118 = Iges(1);
t117 = Iges(2);
t116 = Iges(3);
t115 = omega(1, :);
t114 = omega(2, :);
t113 = omega(3, :);
t107 = -0.2e1 .* t127 .^ 2;
t106 = -0.2e1 .* t126 .^ 2;
t105 = t128 .* t127;
t104 = t128 .* t126;
t103 = t127 .* t126;
t102 = t107 + t137;
t100 = t133 + t103;
t99 = -t134 + t104;
t1 = [(0.1e1 + t107 + t106) .* t121 + (-t135 + t105) .* t145 + (t134 + t104) .* t146; (t106 + t137) .* t120 + (t135 + t105) .* t144 + (-t133 + t103) .* t146; t102 .* t119 + t99 .* t144 + t100 .* t145; t115 .* t139 + t114 .* t140 + t113 .* t141; t115 .* t138 + t114 .* t141 + t127 .* t113 ./ 0.2e1; t126 .* t115 ./ 0.2e1 + t114 .* t138 + t113 .* t139; t115 .* t140 + t128 .* t114 ./ 0.2e1 + t113 .* t138; (-t114 .* t119 + t113 .* t120 + t99 .* t147) .* t142; (-t113 .* t121 + t115 .* t119 + t100 .* t147) .* t142; t130 .* (kT .* (-t131 + t132) + (-t115 .* t120 + t114 .* t121 - t102 .* g) .* m); 0.1e1 ./ t118 .* ((-t109 + t111) .* t143 + (-t136 + (-t116 + t117) .* t113) .* t114); 0.1e1 ./ t117 .* ((t110 - t112) .* t143 + (t136 + (-t118 + t116) .* t113) .* t115); 0.1e1 ./ t116 .* ((-t117 + t118) .* t115 .* t114 + (t131 + t132) .* kQ);];


                 obj.F = t1;
                 obj.isEmptyF = false;
            end
            res = obj.F;
        end
        function res = getJ(obj, ByState)
            [q,v,omega,u,Iges,IM,m,kT,kQ,d,g] = obj.getParams(ByState);
                
            t375 = d * kT;
t344 = q(3);
t374 = t344 * g;
t345 = q(2);
t373 = t345 * g;
t346 = q(1);
t372 = t346 * g;
t371 = 1 - 2 * t345 ^ 2;
t333 = Iges(3);
t327 = 1 / t333;
t370 = kQ * t327;
t339 = u(4);
t340 = u(3);
t341 = u(2);
t342 = u(1);
t369 = ((t342 - t341 + t340 - t339) * IM);
t368 = -2 * t375;
t367 = 2 * t375;
t334 = Iges(2);
t328 = 0.1e1 / t334;
t332 = omega(1);
t366 = (t328 * t332);
t335 = Iges(1);
t329 = 0.1e1 / t335;
t331 = omega(2);
t365 = (t329 * t331);
t337 = v(2);
t343 = q(4);
t364 = t343 * t337;
t338 = v(1);
t363 = t344 * t338;
t336 = v(3);
t362 = t345 * t336;
t361 = t346 * t336;
t360 = t346 * t337;
t359 = t346 * t338;
t358 = t346 * t343;
t357 = t346 * t344;
t356 = t346 * t345;
t355 = (-t333 + t334);
t354 = (-t335 + t333);
t353 = -2 * t370;
t352 = 2 * t370;
t351 = 2 / m * kT;
t350 = IM * t366;
t349 = IM * t365;
t348 = (t327 * (-t334 + t335));
t330 = omega(3);
t326 = t346 / 0.2e1;
t325 = -t345 / 0.2e1;
t324 = -t344 / 0.2e1;
t323 = -t343 / 0.2e1;
t321 = -2 * t344 ^ 2;
t320 = -2 * t343 ^ 2;
t319 = -t332 / 0.2e1;
t318 = t332 / 0.2e1;
t317 = -t331 / 0.2e1;
t316 = t331 / 0.2e1;
t315 = -t330 / 0.2e1;
t314 = t330 / 0.2e1;
t313 = -2 * t373;
t312 = -2 * t343 * g;
t311 = IM * t332;
t310 = IM * t331;
t309 = t345 * t344;
t308 = t345 * t343;
t307 = t345 * t338;
t306 = t345 * t337;
t305 = t344 * t343;
t304 = t344 * t337;
t303 = t344 * t336;
t302 = t343 * t338;
t301 = t343 * t336;
t1 = [1 4 -2 * t364 + 2 * t303; 1 5 2 * t304 + 2 * t301; 1 6 -4 * t363 + 2 * t306 + 2 * t361; 1 7 -4 * t302 - 2 * t360 + 2 * t362; 1 8 1 + t321 + t320; 1 9 -2 * t358 + 2 * t309; 1 10 2 * t357 + 2 * t308; 2 4 2 * t302 - 2 * t362; 2 5 2 * t363 - 4 * t306 - 2 * t361; 2 6 2 * t307 + 2 * t301; 2 7 2 * t359 - 4 * t364 + 2 * t303; 2 8 2 * t358 + 2 * t309; 2 9 t320 + t371; 2 10 -2 * t356 + 2 * t305; 3 4 -2 * t363 + 2 * t306; 3 5 2 * t302 + 2 * t360 - 4 * t362; 3 6 -2 * t359 + 2 * t364 - 4 * t303; 3 7 2 * t307 + 2 * t304; 3 8 -2 * t357 + 2 * t308; 3 9 2 * t356 + 2 * t305; 3 10 t321 + t371; 4 5 t319; 4 6 t317; 4 7 t315; 4 11 t325; 4 12 t324; 4 13 t323; 5 4 t318; 5 6 t314; 5 7 t317; 5 11 t326; 5 12 t323; 5 13 t344 / 0.2e1; 6 4 t316; 6 5 t315; 6 7 t318; 6 11 t343 / 0.2e1; 6 12 t326; 6 13 t325; 7 4 t314; 7 5 t316; 7 6 t319; 7 11 t324; 7 12 t345 / 0.2e1; 7 13 t326; 8 4 2 * t374; 8 5 t312; 8 6 2 * t372; 8 7 t313; 8 9 t330; 8 10 -t331; 8 12 -t336; 8 13 t337; 9 4 t313; 9 5 -2 * t372; 9 6 t312; 9 7 -2 * t374; 9 8 -t330; 9 10 t332; 9 11 t336; 9 13 -t338; 10 5 4 * t373; 10 6 4 * t374; 10 8 t331; 10 9 -t332; 10 11 -t337; 10 12 t338; 10 14 t342 * t351; 10 15 t341 * t351; 10 16 t340 * t351; 10 17 t339 * t351; 11 12 t329 * (-t369 + t355 * t330); 11 13 t355 * t365; 11 14 -t349; 11 15 t329 * ((t341 * t367) + t310); 11 16 -t349; 11 17 t329 * ((t339 * t368) + t310); 12 11 t328 * (t369 + t354 * t330); 12 13 t354 * t366; 12 14 t328 * ((t342 * t368) + t311); 12 15 -t350; 12 16 t328 * ((t340 * t367) + t311); 12 17 -t350; 13 11 t331 * t348; 13 12 t332 * t348; 13 14 t342 * t353; 13 15 t341 * t352; 13 16 t340 * t353; 13 17 t339 * t352;];


            res = t1;
        end
        
        function res = get.J(obj)
            
            if obj.isEmptyJ
                [q,v,omega,u,Iges,IM,m,kT,kQ,d,g] = obj.getParams();

                t375 = d .* kT;
t344 = q(3, :);
t374 = t344 .* g;
t345 = q(2, :);
t373 = t345 .* g;
t346 = q(1, :);
t372 = t346 .* g;
t371 = 1 - 2 .* t345 .^ 2;
t333 = Iges(3);
t327 = 1 ./ t333;
t370 = kQ .* t327;
t339 = u(4, :);
t340 = u(3, :);
t341 = u(2, :);
t342 = u(1, :);
t369 = ((t342 - t341 + t340 - t339) .* IM);
t368 = -2 .* t375;
t367 = 2 .* t375;
t334 = Iges(2);
t328 = 0.1e1 ./ t334;
t332 = omega(1, :);
t366 = (t328 .* t332);
t335 = Iges(1);
t329 = 0.1e1 ./ t335;
t331 = omega(2, :);
t365 = (t329 .* t331);
t337 = v(2, :);
t343 = q(4, :);
t364 = t343 .* t337;
t338 = v(1, :);
t363 = t344 .* t338;
t336 = v(3, :);
t362 = t345 .* t336;
t361 = t346 .* t336;
t360 = t346 .* t337;
t359 = t346 .* t338;
t358 = t346 .* t343;
t357 = t346 .* t344;
t356 = t346 .* t345;
t355 = (-t333 + t334);
t354 = (-t335 + t333);
t353 = -2 .* t370;
t352 = 2 .* t370;
t351 = 2 ./ m .* kT;
t350 = IM .* t366;
t349 = IM .* t365;
t348 = (t327 .* (-t334 + t335));
t330 = omega(3, :);
t326 = t346 ./ 0.2e1;
t325 = -t345 ./ 0.2e1;
t324 = -t344 ./ 0.2e1;
t323 = -t343 ./ 0.2e1;
t321 = -2 .* t344 .^ 2;
t320 = -2 .* t343 .^ 2;
t319 = -t332 ./ 0.2e1;
t318 = t332 ./ 0.2e1;
t317 = -t331 ./ 0.2e1;
t316 = t331 ./ 0.2e1;
t315 = -t330 ./ 0.2e1;
t314 = t330 ./ 0.2e1;
t313 = -2 .* t373;
t312 = -2 .* t343 .* g;
t311 = IM .* t332;
t310 = IM .* t331;
t309 = t345 .* t344;
t308 = t345 .* t343;
t307 = t345 .* t338;
t306 = t345 .* t337;
t305 = t344 .* t343;
t304 = t344 .* t337;
t303 = t344 .* t336;
t302 = t343 .* t338;
t301 = t343 .* t336;
t1 = [1 4 -2 .* t364 + 2 .* t303; 1 5 2 .* t304 + 2 .* t301; 1 6 -4 .* t363 + 2 .* t306 + 2 .* t361; 1 7 -4 .* t302 - 2 .* t360 + 2 .* t362; 1 8 1 + t321 + t320; 1 9 -2 .* t358 + 2 .* t309; 1 10 2 .* t357 + 2 .* t308; 2 4 2 .* t302 - 2 .* t362; 2 5 2 .* t363 - 4 .* t306 - 2 .* t361; 2 6 2 .* t307 + 2 .* t301; 2 7 2 .* t359 - 4 .* t364 + 2 .* t303; 2 8 2 .* t358 + 2 .* t309; 2 9 t320 + t371; 2 10 -2 .* t356 + 2 .* t305; 3 4 -2 .* t363 + 2 .* t306; 3 5 2 .* t302 + 2 .* t360 - 4 .* t362; 3 6 -2 .* t359 + 2 .* t364 - 4 .* t303; 3 7 2 .* t307 + 2 .* t304; 3 8 -2 .* t357 + 2 .* t308; 3 9 2 .* t356 + 2 .* t305; 3 10 t321 + t371; 4 5 t319; 4 6 t317; 4 7 t315; 4 11 t325; 4 12 t324; 4 13 t323; 5 4 t318; 5 6 t314; 5 7 t317; 5 11 t326; 5 12 t323; 5 13 t344 ./ 0.2e1; 6 4 t316; 6 5 t315; 6 7 t318; 6 11 t343 ./ 0.2e1; 6 12 t326; 6 13 t325; 7 4 t314; 7 5 t316; 7 6 t319; 7 11 t324; 7 12 t345 ./ 0.2e1; 7 13 t326; 8 4 2 .* t374; 8 5 t312; 8 6 2 .* t372; 8 7 t313; 8 9 t330; 8 10 -t331; 8 12 -t336; 8 13 t337; 9 4 t313; 9 5 -2 .* t372; 9 6 t312; 9 7 -2 .* t374; 9 8 -t330; 9 10 t332; 9 11 t336; 9 13 -t338; 10 5 4 .* t373; 10 6 4 .* t374; 10 8 t331; 10 9 -t332; 10 11 -t337; 10 12 t338; 10 14 t342 .* t351; 10 15 t341 .* t351; 10 16 t340 .* t351; 10 17 t339 .* t351; 11 12 t329 .* (-t369 + t355 .* t330); 11 13 t355 .* t365; 11 14 -t349; 11 15 t329 .* ((t341 .* t367) + t310); 11 16 -t349; 11 17 t329 .* ((t339 .* t368) + t310); 12 11 t328 .* (t369 + t354 .* t330); 12 13 t354 .* t366; 12 14 t328 .* ((t342 .* t368) + t311); 12 15 -t350; 12 16 t328 .* ((t340 .* t367) + t311); 12 17 -t350; 13 11 t331 .* t348; 13 12 t332 .* t348; 13 14 t342 .* t353; 13 15 t341 .* t352; 13 16 t340 .* t353; 13 17 t339 .* t352;];


                obj.J = t1;
                obj.isEmptyJ = false;
            end
            res = obj.J;
        end
        
        function res = getH(obj, ByState)
            
            [q,v,omega,u,Iges,IM,m,kT,kQ,d,g] = obj.getParams(ByState);
                
            t561 = g * 1;
t560 = kT * 1;
t536 = Iges(3);
t559 = 1 / t536;
t537 = Iges(2);
t532 = 1 / t537;
t558 = 1 * t532;
t538 = Iges(1);
t533 = 1 / t538;
t557 = 1 * t533;
t556 = v(3) * 1;
t555 = v(2) * 1;
t554 = v(1) * 1;
t553 = q(4) * 1;
t552 = q(3) * 1;
t551 = q(2) * 1;
t550 = q(1) * 1;
t549 = d * t560;
t548 = kQ * t559;
t547 = t532 * t549;
t546 = t533 * t549;
t535 = -1 / 0.2e1;
t534 = 1 / 0.2e1;
t530 = -2 * t561;
t529 = 2 * t561;
t528 = 4 * t561;
t527 = 2 / m * t560;
t526 = -2 * t550;
t525 = 2 * t550;
t524 = -4 * t551;
t523 = -2 * t551;
t522 = 2 * t551;
t521 = -4 * t552;
t520 = -2 * t552;
t519 = 2 * t552;
t518 = -4 * t553;
t517 = -2 * t553;
t516 = 2 * t553;
t515 = -4 * t554;
t514 = -2 * t554;
t513 = 2 * t554;
t512 = -4 * t555;
t511 = -2 * t555;
t510 = 2 * t555;
t509 = -4 * t556;
t508 = -2 * t556;
t507 = 2 * t556;
t506 = IM * t557;
t505 = IM * t558;
t504 = -2 * t548;
t503 = 2 * t548;
t502 = (-t536 + t537) * t557;
t501 = (-t538 + t536) * t558;
t500 = (-t537 + t538) * t559;
t1 = [1 4 6 t507; 1 4 7 t511; 1 4 9 t517; 1 4 10 t519; 1 5 6 t510; 1 5 7 t507; 1 5 9 t519; 1 5 10 t516; 1 6 4 t507; 1 6 5 t510; 1 6 6 t515; 1 6 8 t521; 1 6 9 t522; 1 6 10 t525; 1 7 4 t511; 1 7 5 t507; 1 7 7 t515; 1 7 8 t518; 1 7 9 t526; 1 7 10 t522; 1 8 6 t521; 1 8 7 t518; 1 9 4 t517; 1 9 5 t519; 1 9 6 t522; 1 9 7 t526; 1 10 4 t519; 1 10 5 t516; 1 10 6 t525; 1 10 7 t522; 2 4 5 t508; 2 4 7 t513; 2 4 8 t516; 2 4 10 t523; 2 5 4 t508; 2 5 5 t512; 2 5 6 t513; 2 5 8 t519; 2 5 9 t524; 2 5 10 t526; 2 6 5 t513; 2 6 7 t507; 2 6 8 t522; 2 6 10 t516; 2 7 4 t513; 2 7 6 t507; 2 7 7 t512; 2 7 8 t525; 2 7 9 t518; 2 7 10 t519; 2 8 4 t516; 2 8 5 t519; 2 8 6 t522; 2 8 7 t525; 2 9 5 t524; 2 9 7 t518; 2 10 4 t523; 2 10 5 t526; 2 10 6 t516; 2 10 7 t519; 3 4 5 t510; 3 4 6 t514; 3 4 8 t520; 3 4 9 t522; 3 5 4 t510; 3 5 5 t509; 3 5 7 t513; 3 5 8 t516; 3 5 9 t525; 3 5 10 t524; 3 6 4 t514; 3 6 6 t509; 3 6 7 t510; 3 6 8 t526; 3 6 9 t516; 3 6 10 t521; 3 7 5 t513; 3 7 6 t510; 3 7 8 t522; 3 7 9 t519; 3 8 4 t520; 3 8 5 t516; 3 8 6 t526; 3 8 7 t522; 3 9 4 t522; 3 9 5 t525; 3 9 6 t516; 3 9 7 t519; 3 10 5 t524; 3 10 6 t521; 4 5 11 t535; 4 6 12 t535; 4 7 13 t535; 4 11 5 t535; 4 12 6 t535; 4 13 7 t535; 5 4 11 t534; 5 6 13 t534; 5 7 12 t535; 5 11 4 t534; 5 12 7 t535; 5 13 6 t534; 6 4 12 t534; 6 5 13 t535; 6 7 11 t534; 6 11 7 t534; 6 12 4 t534; 6 13 5 t535; 7 4 13 t534; 7 5 12 t534; 7 6 11 t535; 7 11 6 t535; 7 12 5 t534; 7 13 4 t534; 8 4 6 t529; 8 5 7 t530; 8 6 4 t529; 8 7 5 t530; 8 9 13 1; 8 10 12 -1; 8 12 10 -1; 8 13 9 1; 9 4 5 t530; 9 5 4 t530; 9 6 7 t530; 9 7 6 t530; 9 8 13 -1; 9 10 11 1; 9 11 10 1; 9 13 8 -1; 10 5 5 t528; 10 6 6 t528; 10 8 12 1; 10 9 11 -1; 10 11 9 -1; 10 12 8 1; 10 14 14 t527; 10 15 15 t527; 10 16 16 t527; 10 17 17 t527; 11 12 13 t502; 11 12 14 -t506; 11 12 15 t506; 11 12 16 -t506; 11 12 17 t506; 11 13 12 t502; 11 14 12 -t506; 11 15 12 t506; 11 15 15 2 * t546; 11 16 12 -t506; 11 17 12 t506; 11 17 17 -2 * t546; 12 11 13 t501; 12 11 14 t505; 12 11 15 -t505; 12 11 16 t505; 12 11 17 -t505; 12 13 11 t501; 12 14 11 t505; 12 14 14 -2 * t547; 12 15 11 -t505; 12 16 11 t505; 12 16 16 2 * t547; 12 17 11 -t505; 13 11 12 t500; 13 12 11 t500; 13 14 14 t504; 13 15 15 t503; 13 16 16 t504; 13 17 17 t503;];

            
            res = t1;
        end
        
        function res = get.H(obj)
            
            if obj.isEmptyH
                [q,v,omega,u,Iges,IM,m,kT,kQ,d,g] = obj.getParams();

                onesV = ones(1, obj.environment.n_timepoints); %Korregiere die Matrix Dimension

                t561 = g .* onesV;
t560 = kT .* onesV;
t536 = Iges(3);
t559 = onesV ./ t536;
t537 = Iges(2);
t532 = 1 ./ t537;
t558 = onesV .* t532;
t538 = Iges(1);
t533 = 1 ./ t538;
t557 = onesV .* t533;
t556 = v(3, :) .* onesV;
t555 = v(2, :) .* onesV;
t554 = v(1, :) .* onesV;
t553 = q(4, :) .* onesV;
t552 = q(3, :) .* onesV;
t551 = q(2, :) .* onesV;
t550 = q(1, :) .* onesV;
t549 = d .* t560;
t548 = kQ .* t559;
t547 = t532 .* t549;
t546 = t533 .* t549;
t535 = -onesV ./ 0.2e1;
t534 = onesV ./ 0.2e1;
t530 = -2 .* t561;
t529 = 2 .* t561;
t528 = 4 .* t561;
t527 = 2 ./ m .* t560;
t526 = -2 .* t550;
t525 = 2 .* t550;
t524 = -4 .* t551;
t523 = -2 .* t551;
t522 = 2 .* t551;
t521 = -4 .* t552;
t520 = -2 .* t552;
t519 = 2 .* t552;
t518 = -4 .* t553;
t517 = -2 .* t553;
t516 = 2 .* t553;
t515 = -4 .* t554;
t514 = -2 .* t554;
t513 = 2 .* t554;
t512 = -4 .* t555;
t511 = -2 .* t555;
t510 = 2 .* t555;
t509 = -4 .* t556;
t508 = -2 .* t556;
t507 = 2 .* t556;
t506 = IM .* t557;
t505 = IM .* t558;
t504 = -2 .* t548;
t503 = 2 .* t548;
t502 = (-t536 + t537) .* t557;
t501 = (-t538 + t536) .* t558;
t500 = (-t537 + t538) .* t559;
t1 = [1 4 6 t507; 1 4 7 t511; 1 4 9 t517; 1 4 10 t519; 1 5 6 t510; 1 5 7 t507; 1 5 9 t519; 1 5 10 t516; 1 6 4 t507; 1 6 5 t510; 1 6 6 t515; 1 6 8 t521; 1 6 9 t522; 1 6 10 t525; 1 7 4 t511; 1 7 5 t507; 1 7 7 t515; 1 7 8 t518; 1 7 9 t526; 1 7 10 t522; 1 8 6 t521; 1 8 7 t518; 1 9 4 t517; 1 9 5 t519; 1 9 6 t522; 1 9 7 t526; 1 10 4 t519; 1 10 5 t516; 1 10 6 t525; 1 10 7 t522; 2 4 5 t508; 2 4 7 t513; 2 4 8 t516; 2 4 10 t523; 2 5 4 t508; 2 5 5 t512; 2 5 6 t513; 2 5 8 t519; 2 5 9 t524; 2 5 10 t526; 2 6 5 t513; 2 6 7 t507; 2 6 8 t522; 2 6 10 t516; 2 7 4 t513; 2 7 6 t507; 2 7 7 t512; 2 7 8 t525; 2 7 9 t518; 2 7 10 t519; 2 8 4 t516; 2 8 5 t519; 2 8 6 t522; 2 8 7 t525; 2 9 5 t524; 2 9 7 t518; 2 10 4 t523; 2 10 5 t526; 2 10 6 t516; 2 10 7 t519; 3 4 5 t510; 3 4 6 t514; 3 4 8 t520; 3 4 9 t522; 3 5 4 t510; 3 5 5 t509; 3 5 7 t513; 3 5 8 t516; 3 5 9 t525; 3 5 10 t524; 3 6 4 t514; 3 6 6 t509; 3 6 7 t510; 3 6 8 t526; 3 6 9 t516; 3 6 10 t521; 3 7 5 t513; 3 7 6 t510; 3 7 8 t522; 3 7 9 t519; 3 8 4 t520; 3 8 5 t516; 3 8 6 t526; 3 8 7 t522; 3 9 4 t522; 3 9 5 t525; 3 9 6 t516; 3 9 7 t519; 3 10 5 t524; 3 10 6 t521; 4 5 11 t535; 4 6 12 t535; 4 7 13 t535; 4 11 5 t535; 4 12 6 t535; 4 13 7 t535; 5 4 11 t534; 5 6 13 t534; 5 7 12 t535; 5 11 4 t534; 5 12 7 t535; 5 13 6 t534; 6 4 12 t534; 6 5 13 t535; 6 7 11 t534; 6 11 7 t534; 6 12 4 t534; 6 13 5 t535; 7 4 13 t534; 7 5 12 t534; 7 6 11 t535; 7 11 6 t535; 7 12 5 t534; 7 13 4 t534; 8 4 6 t529; 8 5 7 t530; 8 6 4 t529; 8 7 5 t530; 8 9 13 onesV; 8 10 12 -onesV; 8 12 10 -onesV; 8 13 9 onesV; 9 4 5 t530; 9 5 4 t530; 9 6 7 t530; 9 7 6 t530; 9 8 13 -onesV; 9 10 11 onesV; 9 11 10 onesV; 9 13 8 -onesV; 10 5 5 t528; 10 6 6 t528; 10 8 12 onesV; 10 9 11 -onesV; 10 11 9 -onesV; 10 12 8 onesV; 10 14 14 t527; 10 15 15 t527; 10 16 16 t527; 10 17 17 t527; 11 12 13 t502; 11 12 14 -t506; 11 12 15 t506; 11 12 16 -t506; 11 12 17 t506; 11 13 12 t502; 11 14 12 -t506; 11 15 12 t506; 11 15 15 2 .* t546; 11 16 12 -t506; 11 17 12 t506; 11 17 17 -2 .* t546; 12 11 13 t501; 12 11 14 t505; 12 11 15 -t505; 12 11 16 t505; 12 11 17 -t505; 12 13 11 t501; 12 14 11 t505; 12 14 14 -2 .* t547; 12 15 11 -t505; 12 16 11 t505; 12 16 16 2 .* t547; 12 17 11 -t505; 13 11 12 t500; 13 12 11 t500; 13 14 14 t504; 13 15 15 t503; 13 16 16 t504; 13 17 17 t503;];


                obj.H = t1;
                obj.isEmptyH = false;
            end
            res = obj.H;
            
        end
        
        function [q,v,omega,u,Iges,IM,m,kT,kQ,d,g] = getParams(varargin)
            obj = varargin{1};
            if nargin == 1
                q   = obj.state(4:7    , :);
                v   = obj.state(8:10   , :);
                omega   = obj.state(11:13  , :);
                u   = obj.contr;
            elseif nargin == 2
                state = varargin{2};
                q   = state(4:7, 1);
                v   = state(8:10, 1);
                omega = state(11:13, 1);
                u   = state(14:17, 1);
            else 
                error('Nicht erwartet Anzahl von Parametern');
            end
            
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