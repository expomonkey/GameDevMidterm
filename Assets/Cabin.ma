//Maya ASCII 2018 scene
//Name: Cabin.ma
//Last modified: Thu, Oct 05, 2017 03:44:35 PM
//Codeset: 1252
requires maya "2018";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "634C7B8E-4935-9D66-7488-FAB46B9D6A9D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -85.723613036205521 16.894068884039779 -21.920098710320534 ;
	setAttr ".r" -type "double3" -8.7383527201970299 -1547.7999999998187 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "8363CC38-476A-90CC-CC7A-AB943AEB4F25";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 81.486352608606467;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "E846F5FF-479D-7E07-5889-66AF420C4D04";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "EF9A49F7-49E0-3C77-8CCF-E7B76944F43E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "D0021BCD-483C-8E88-FED5-2A94C91E10BC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "34EDFD75-4E45-9A5C-6637-3C80E2001879";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "B7FE341C-41EB-B098-2C29-FC8E9B2D94D5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "46D4E367-4EC2-5F34-1AB5-15B3532EB0CB";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCube4";
	rename -uid "7043F522-4592-E290-3E58-8B82E1438240";
	setAttr ".t" -type "double3" -14.702038798517822 10.270524439391453 -2.3808203281653801 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 1.6924274897199156 1.7793238517248318 1 ;
createNode mesh -n "polySurfaceShape1" -p "pCube4";
	rename -uid "0C94AA4A-429E-4B5F-EB93-BCA26434C4F4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -9.1683054 -5.034331799 0.522232 9.1683054 -5.034331799 0.522232
		 -9.1683054 5.034331799 0.522232 9.1683054 5.034331799 0.522232 -9.1683054 5.034331799 -0.522232
		 9.1683054 5.034331799 -0.522232 -9.1683054 -5.034331799 -0.522232 9.1683054 -5.034331799 -0.522232;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube5";
	rename -uid "342FCF10-4D9F-8D90-5418-2184A790CF00";
	setAttr ".t" -type "double3" 0.23529191047950526 10.270524439391453 -17.485250768358053 ;
	setAttr ".s" -type "double3" 1.6924274897199156 1.7793238517248318 1 ;
createNode mesh -n "polySurfaceShape1" -p "pCube5";
	rename -uid "77D9E9E5-485F-0D39-A5DE-CAAD69632970";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -9.1683054 -5.034331799 0.522232 9.1683054 -5.034331799 0.522232
		 -9.1683054 5.034331799 0.522232 9.1683054 5.034331799 0.522232 -9.1683054 5.034331799 -0.522232
		 9.1683054 5.034331799 -0.522232 -9.1683054 -5.034331799 -0.522232 9.1683054 -5.034331799 -0.522232;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube6";
	rename -uid "29E7D2D3-447A-0A64-A7D6-0C828EDD8EC3";
	setAttr ".t" -type "double3" 0.32570602438679774 10.270524439391453 12.617186409393678 ;
	setAttr ".s" -type "double3" 1.6924274897199156 1.7793238517248318 1 ;
createNode mesh -n "polySurfaceShape1" -p "pCube6";
	rename -uid "035BBAEC-4698-E83C-BDCD-509E99059E7B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -9.1683054 -5.034331799 0.522232 9.1683054 -5.034331799 0.522232
		 -9.1683054 5.034331799 0.522232 9.1683054 5.034331799 0.522232 -9.1683054 5.034331799 -0.522232
		 9.1683054 5.034331799 -0.522232 -9.1683054 -5.034331799 -0.522232 9.1683054 -5.034331799 -0.522232;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube11";
	rename -uid "F69BAB9F-4C40-D6CE-B908-A89BF875FDB1";
	setAttr ".rp" -type "double3" 0.28049802780151367 8.6399588584899902 -2.4340319633483887 ;
	setAttr ".sp" -type "double3" 0.28049802780151367 8.6399588584899902 -2.4340319633483887 ;
createNode mesh -n "pCube11Shape" -p "pCube11";
	rename -uid "48413843-498C-616D-C3B3-2899BBC11162";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 128 ".uvst[0].uvsp[0:127]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.55454671 0.5 0.55454671 0.75 0.55454671 0.5 0.55454671
		 0.25 0.43918276 0.5 0.43918276 0.75 0.43918276 0.5 0.43918276 0.25 0.375 0.12584725
		 0.43918276 0.12584725 0.55454671 0.12584725 0.625 0.12584725 0.625 0.62415278 0.875
		 0.12584725 0.55454671 0.62415278 0.43918276 0.62415278 0.125 0.12584725 0.375 0.62415278
		 0.55454671 0.25 0.55454671 0.12584725 0.625 0.12584725 0.625 0.25 0.55454671 0.5
		 0.625 0.5 0.625 0.62415278 0.55454671 0.62415278 0.55454671 0.5 0.55454671 0.75 0.625
		 0.75 0.625 1 0.875 0.12584725 0.875 0.25 0.125 0.12584725 0.375 0.12584725 0.375
		 0.25 0.125 0.25 0.43918276 0.62415278 0.43918276 0.5 0.43918276 0.25 0.43918276 0.12584725
		 0.375 0.75 0.43918276 0.75 0.43918276 0.5 0.375 1 0.375 0.5 0.375 0.62415278 0.375
		 0 0.625 0 0.875 0 0.125 0 0.55454671 0.25 0.55454671 0.12584725 0.625 0.12584725
		 0.625 0.25 0.55454671 0.5 0.625 0.5 0.625 0.62415278 0.55454671 0.62415278 0.55454671
		 0.5 0.55454671 0.75 0.625 0.75 0.625 1 0.875 0.12584725 0.875 0.25 0.125 0.12584725
		 0.375 0.12584725 0.375 0.25 0.125 0.25 0.43918276 0.62415278 0.43918276 0.5 0.43918276
		 0.25 0.43918276 0.12584725 0.375 0.75 0.43918276 0.75 0.43918276 0.5 0.375 1 0.375
		 0.5 0.375 0.62415278 0.375 0 0.625 0 0.875 0 0.125 0 0.55454671 0.25 0.55454671 0.12584725
		 0.625 0.12584725 0.625 0.25 0.55454671 0.5 0.625 0.5 0.625 0.62415278 0.55454671
		 0.62415278 0.55454671 0.5 0.55454671 0.75 0.625 0.75 0.625 1 0.875 0.12584725 0.875
		 0.25 0.125 0.12584725 0.375 0.12584725 0.375 0.25 0.125 0.25 0.43918276 0.62415278
		 0.43918276 0.5 0.43918276 0.25 0.43918276 0.12584725 0.375 0.75 0.43918276 0.75 0.43918276
		 0.5 0.375 1 0.375 0.5 0.375 0.62415278 0.375 0 0.625 0 0.875 0 0.125 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 33 ".pt";
	setAttr ".pt[2]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[3]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[4]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[5]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[10]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[11]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[14]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[15]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[26]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[27]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[28]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[29]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[34]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[35]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[38]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[39]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[50]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[51]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[52]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[53]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[58]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[59]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[62]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[63]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[74]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[75]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[76]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[77]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[82]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[83]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[86]" -type "float3" 0 -3.2611289 0 ;
	setAttr ".pt[87]" -type "float3" 0 -3.2611289 0 ;
	setAttr -s 96 ".vt[0:95]"  -15.19098759 1.31281757 13.1394186 15.84239864 1.31281757 13.1394186
		 -15.19098759 19.22822952 13.1394186 15.84239864 19.22822952 13.1394186 -15.19098759 19.22822952 12.094954491
		 15.84239864 19.22822952 12.094954491 -15.19098759 1.31281757 12.094954491 15.84239864 1.31281757 12.094954491
		 7.096786976 1.31281757 13.1394186 7.096786976 1.31281757 12.094954491 7.096786976 19.22822952 12.094954491
		 7.096786976 19.22822952 13.1394186 -7.22375393 1.31281757 13.1394186 -7.22375393 1.31281757 12.094954491
		 -7.22375393 19.22822952 12.094954491 -7.22375393 19.22822952 13.1394186 -15.19098759 10.3312397 13.1394186
		 -7.22375393 10.3312397 13.1394186 7.096786976 10.3312397 13.1394186 15.84239864 10.3312397 13.1394186
		 15.84239864 10.3312397 12.094954491 7.096786976 10.3312397 12.094954491 -7.22375393 10.3312397 12.094954491
		 -15.19098759 10.3312397 12.094954491 15.78002739 1.31281757 13.13587379 15.78002739 1.31281757 -17.89751244
		 15.78002739 19.22822952 13.13587379 15.78002739 19.22822952 -17.89751244 14.73556328 19.22822952 13.13587379
		 14.73556328 19.22822952 -17.89751244 14.73556328 1.31281757 13.13587379 14.73556328 1.31281757 -17.89751244
		 15.78002739 1.31281757 -9.15190125 14.73556328 1.31281757 -9.15190125 14.73556328 19.22822952 -9.15190125
		 15.78002739 19.22822952 -9.15190125 15.78002739 1.31281757 5.16863966 14.73556328 1.31281757 5.16863966
		 14.73556328 19.22822952 5.16863966 15.78002739 19.22822952 5.16863966 15.78002739 10.3312397 13.13587379
		 15.78002739 10.3312397 5.16863966 15.78002739 10.3312397 -9.15190125 15.78002739 10.3312397 -17.89751244
		 14.73556328 10.3312397 -17.89751244 14.73556328 10.3312397 -9.15190125 14.73556328 10.3312397 5.16863966
		 14.73556328 10.3312397 13.13587379 -15.28140259 1.31281757 -16.96301842 15.75198364 1.31281757 -16.96301842
		 -15.28140259 19.22822952 -16.96301842 15.75198364 19.22822952 -16.96301842 -15.28140259 19.22822952 -18.0074825287
		 15.75198364 19.22822952 -18.0074825287 -15.28140259 1.31281757 -18.0074825287 15.75198364 1.31281757 -18.0074825287
		 7.0063729286 1.31281757 -16.96301842 7.0063729286 1.31281757 -18.0074825287 7.0063729286 19.22822952 -18.0074825287
		 7.0063729286 19.22822952 -16.96301842 -7.31416798 1.31281757 -16.96301842 -7.31416798 1.31281757 -18.0074825287
		 -7.31416798 19.22822952 -18.0074825287 -7.31416798 19.22822952 -16.96301842 -15.28140259 10.3312397 -16.96301842
		 -7.31416798 10.3312397 -16.96301842 7.0063729286 10.3312397 -16.96301842 15.75198364 10.3312397 -16.96301842
		 15.75198364 10.3312397 -18.0074825287 7.0063729286 10.3312397 -18.0074825287 -7.31416798 10.3312397 -18.0074825287
		 -15.28140259 10.3312397 -18.0074825287 -14.17980671 1.31281757 13.13587379 -14.17980671 1.31281757 -17.89751244
		 -14.17980671 19.22822952 13.13587379 -14.17980671 19.22822952 -17.89751244 -15.22427082 19.22822952 13.13587379
		 -15.22427082 19.22822952 -17.89751244 -15.22427082 1.31281757 13.13587379 -15.22427082 1.31281757 -17.89751244
		 -14.17980671 1.31281757 -9.15190125 -15.22427082 1.31281757 -9.15190125 -15.22427082 19.22822952 -9.15190125
		 -14.17980671 19.22822952 -9.15190125 -14.17980671 1.31281757 5.16863966 -15.22427082 1.31281757 5.16863966
		 -15.22427082 19.22822952 5.16863966 -14.17980671 19.22822952 5.16863966 -14.17980671 10.3312397 13.13587379
		 -14.17980671 10.3312397 5.16863966 -14.17980671 10.3312397 -9.15190125 -14.17980671 10.3312397 -17.89751244
		 -15.22427082 10.3312397 -17.89751244 -15.22427082 10.3312397 -9.15190125 -15.22427082 10.3312397 5.16863966
		 -15.22427082 10.3312397 13.13587379;
	setAttr -s 176 ".ed";
	setAttr ".ed[0:165]"  0 12 0 2 15 0 4 14 0 6 13 0 0 16 0 1 19 0 2 4 0 3 5 0
		 4 23 0 5 20 0 6 0 0 7 1 0 8 1 0 9 7 0 10 5 0 11 3 0 8 9 0 9 21 0 10 11 1 11 18 1
		 14 10 0 15 11 0 12 13 0 13 22 0 14 15 1 15 17 1 16 2 0 17 12 0 18 8 0 19 3 0 20 7 0
		 21 10 1 22 14 1 23 6 0 16 17 1 17 18 0 18 19 1 19 20 1 20 21 1 21 22 0 22 23 1 23 16 1
		 17 22 0 18 21 0 24 36 0 26 39 0 28 38 0 30 37 0 24 40 0 25 43 0 26 28 0 27 29 0 28 47 0
		 29 44 0 30 24 0 31 25 0 32 25 0 33 31 0 34 29 0 35 27 0 32 33 0 33 45 0 34 35 1 35 42 1
		 38 34 0 39 35 0 36 37 0 37 46 0 38 39 1 39 41 1 40 26 0 41 36 0 42 32 0 43 27 0 44 31 0
		 45 34 1 46 38 1 47 30 0 40 41 1 41 42 0 42 43 1 43 44 1 44 45 1 45 46 0 46 47 1 47 40 1
		 41 46 0 42 45 0 48 60 0 50 63 0 52 62 0 54 61 0 48 64 0 49 67 0 50 52 0 51 53 0 52 71 0
		 53 68 0 54 48 0 55 49 0 56 49 0 57 55 0 58 53 0 59 51 0 56 57 0 57 69 0 58 59 1 59 66 1
		 62 58 0 63 59 0 60 61 0 61 70 0 62 63 1 63 65 1 64 50 0 65 60 0 66 56 0 67 51 0 68 55 0
		 69 58 1 70 62 1 71 54 0 64 65 1 65 66 0 66 67 1 67 68 1 68 69 1 69 70 0 70 71 1 71 64 1
		 65 70 0 66 69 0 72 84 0 74 87 0 76 86 0 78 85 0 72 88 0 73 91 0 74 76 0 75 77 0 76 95 0
		 77 92 0 78 72 0 79 73 0 80 73 0 81 79 0 82 77 0 83 75 0 80 81 0 81 93 0 82 83 1 83 90 1
		 86 82 0 87 83 0 84 85 0 85 94 0 86 87 1 87 89 1 88 74 0 89 84 0 90 80 0 91 75 0 92 79 0
		 93 82 1 94 86 1 95 78 0;
	setAttr ".ed[166:175]" 88 89 1 89 90 0 90 91 1 91 92 1 92 93 1 93 94 0 94 95 1
		 95 88 1 89 94 0 90 93 0;
	setAttr -s 88 -ch 352 ".fc[0:87]" -type "polyFaces" 
		f 4 19 36 29 -16
		mu 0 4 17 24 25 3
		f 4 18 15 7 -15
		mu 0 4 16 17 3 5
		f 4 38 31 14 9
		mu 0 4 26 28 16 5
		f 4 16 13 11 -13
		mu 0 4 14 15 7 9
		f 4 37 -10 -8 -30
		mu 0 4 25 27 11 3
		f 4 41 26 6 8
		mu 0 4 30 22 2 13
		f 4 39 32 20 -32
		mu 0 4 28 29 20 16
		f 4 24 21 -19 -21
		mu 0 4 20 21 17 16
		f 4 25 35 -20 -22
		mu 0 4 21 23 24 17
		f 4 3 -23 -1 -11
		mu 0 4 6 19 18 8
		f 4 2 -33 40 -9
		mu 0 4 4 20 29 31
		f 4 1 -25 -3 -7
		mu 0 4 2 21 20 4
		f 4 34 -26 -2 -27
		mu 0 4 22 23 21 2
		f 4 0 -28 -35 -5
		mu 0 4 0 18 23 22
		f 4 -37 28 12 5
		mu 0 4 25 24 14 1
		f 4 -12 -31 -38 -6
		mu 0 4 1 10 27 25
		f 4 17 -39 30 -14
		mu 0 4 15 28 26 7
		f 4 -41 -24 -4 -34
		mu 0 4 31 29 19 6
		f 4 10 4 -42 33
		mu 0 4 12 0 22 30
		f 4 -36 42 -40 -44
		mu 0 4 24 23 29 28
		f 4 -18 -17 -29 43
		mu 0 4 28 15 14 24
		f 4 23 -43 27 22
		mu 0 4 19 29 23 18
		f 4 63 80 73 -60
		mu 0 4 32 33 34 35
		f 4 62 59 51 -59
		mu 0 4 36 32 35 37
		f 4 82 75 58 53
		mu 0 4 38 39 36 37
		f 4 60 57 55 -57
		mu 0 4 40 41 42 43
		f 4 81 -54 -52 -74
		mu 0 4 34 44 45 35
		f 4 85 70 50 52
		mu 0 4 46 47 48 49
		f 4 83 76 64 -76
		mu 0 4 39 50 51 36
		f 4 68 65 -63 -65
		mu 0 4 51 52 32 36
		f 4 69 79 -64 -66
		mu 0 4 52 53 33 32
		f 4 47 -67 -45 -55
		mu 0 4 54 55 56 57
		f 4 46 -77 84 -53
		mu 0 4 58 51 50 59
		f 4 45 -69 -47 -51
		mu 0 4 48 52 51 58
		f 4 78 -70 -46 -71
		mu 0 4 47 53 52 48
		f 4 44 -72 -79 -49
		mu 0 4 60 56 53 47
		f 4 -81 72 56 49
		mu 0 4 34 33 40 61
		f 4 -56 -75 -82 -50
		mu 0 4 61 62 44 34
		f 4 61 -83 74 -58
		mu 0 4 41 39 38 42
		f 4 -85 -68 -48 -78
		mu 0 4 59 50 55 54
		f 4 54 48 -86 77
		mu 0 4 63 60 47 46
		f 4 -80 86 -84 -88
		mu 0 4 33 53 50 39
		f 4 -62 -61 -73 87
		mu 0 4 39 41 40 33
		f 4 67 -87 71 66
		mu 0 4 55 50 53 56
		f 4 107 124 117 -104
		mu 0 4 64 65 66 67
		f 4 106 103 95 -103
		mu 0 4 68 64 67 69
		f 4 126 119 102 97
		mu 0 4 70 71 68 69
		f 4 104 101 99 -101
		mu 0 4 72 73 74 75
		f 4 125 -98 -96 -118
		mu 0 4 66 76 77 67
		f 4 129 114 94 96
		mu 0 4 78 79 80 81
		f 4 127 120 108 -120
		mu 0 4 71 82 83 68
		f 4 112 109 -107 -109
		mu 0 4 83 84 64 68
		f 4 113 123 -108 -110
		mu 0 4 84 85 65 64
		f 4 91 -111 -89 -99
		mu 0 4 86 87 88 89
		f 4 90 -121 128 -97
		mu 0 4 90 83 82 91
		f 4 89 -113 -91 -95
		mu 0 4 80 84 83 90
		f 4 122 -114 -90 -115
		mu 0 4 79 85 84 80
		f 4 88 -116 -123 -93
		mu 0 4 92 88 85 79
		f 4 -125 116 100 93
		mu 0 4 66 65 72 93
		f 4 -100 -119 -126 -94
		mu 0 4 93 94 76 66
		f 4 105 -127 118 -102
		mu 0 4 73 71 70 74
		f 4 -129 -112 -92 -122
		mu 0 4 91 82 87 86
		f 4 98 92 -130 121
		mu 0 4 95 92 79 78
		f 4 -124 130 -128 -132
		mu 0 4 65 85 82 71
		f 4 -106 -105 -117 131
		mu 0 4 71 73 72 65
		f 4 111 -131 115 110
		mu 0 4 87 82 85 88
		f 4 151 168 161 -148
		mu 0 4 96 97 98 99
		f 4 150 147 139 -147
		mu 0 4 100 96 99 101
		f 4 170 163 146 141
		mu 0 4 102 103 100 101
		f 4 148 145 143 -145
		mu 0 4 104 105 106 107
		f 4 169 -142 -140 -162
		mu 0 4 98 108 109 99
		f 4 173 158 138 140
		mu 0 4 110 111 112 113
		f 4 171 164 152 -164
		mu 0 4 103 114 115 100
		f 4 156 153 -151 -153
		mu 0 4 115 116 96 100
		f 4 157 167 -152 -154
		mu 0 4 116 117 97 96
		f 4 135 -155 -133 -143
		mu 0 4 118 119 120 121
		f 4 134 -165 172 -141
		mu 0 4 122 115 114 123
		f 4 133 -157 -135 -139
		mu 0 4 112 116 115 122
		f 4 166 -158 -134 -159
		mu 0 4 111 117 116 112
		f 4 132 -160 -167 -137
		mu 0 4 124 120 117 111
		f 4 -169 160 144 137
		mu 0 4 98 97 104 125
		f 4 -144 -163 -170 -138
		mu 0 4 125 126 108 98
		f 4 149 -171 162 -146
		mu 0 4 105 103 102 106
		f 4 -173 -156 -136 -166
		mu 0 4 123 114 119 118
		f 4 142 136 -174 165
		mu 0 4 127 124 111 110
		f 4 -168 174 -172 -176
		mu 0 4 97 117 114 103
		f 4 -150 -149 -161 175
		mu 0 4 103 105 104 97
		f 4 155 -175 159 154
		mu 0 4 119 114 117 120;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube12";
	rename -uid "33B7810A-4C39-BF1B-0DBE-5E832B034FAC";
	setAttr ".rp" -type "double3" 0.48061561584472656 21.405757314670101 -2.3826885223388672 ;
	setAttr ".sp" -type "double3" 0.48061561584472656 21.405757314670101 -2.3826885223388672 ;
createNode mesh -n "pCube12Shape" -p "pCube12";
	rename -uid "D5C128C3-496D-2AB3-F2C1-60BD5BED4BF4";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:27]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 44 ".uvst[0].uvsp[0:43]" -type "float2" 0.25038823 0.25 0.74961174
		 0.25 0.375 0.052901998 0.625 0.052901998 0.74961174 0.052901998 0.875 0.052901998
		 0.125 0.052901998 0.25038823 0.052901998 0.125 0.052901998 0.25038823 0.052901998
		 0.25038823 0.25 0.625 0.052901998 0.74961174 0.052901998 0.74961174 0.25 0.375 0.052901998
		 0.875 0.052901998 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625
		 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625
		 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1
		 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".pt[0:31]" -type "float3"  0 -3.0729423 0 0 -3.0729423 
		0 0 -3.0729423 0 0 -3.0729423 0 0 -3.0729423 0 0 -3.0729423 0 0 -3.0729423 0 0 -3.0729423 
		0 0 -3.0729423 0 0 -3.0729423 0 0 -3.0729423 0 0 -3.0729423 0 0 -3.0729423 0 0 -3.0729423 
		0 0 -3.0729423 0 0 -3.0729423 0 0 -3.0729423 0 0 -3.0729423 0 0 -3.0729423 0 0 -3.0729423 
		0 0 -3.0729423 0 0 -3.0729423 0 0 -3.0729423 0 0 -3.0729423 0 0 -3.0729423 0 0 -3.0729423 
		0 0 -3.0729423 0 0 -3.0729423 0 0 -3.0729423 0 0 -3.0729423 0 0 -3.0729423 0 0 -3.0729423 
		0;
	setAttr -s 32 ".vt[0:31]"  14.16860008 29.43540192 -2.42598963 15.80451202 29.43540192 -2.42598963
		 14.16860008 18.38435936 12.80885315 15.80451202 18.38435936 12.80885315 15.80451202 18.38435936 -2.42598963
		 15.80451202 18.38435936 -17.75574112 14.16860008 18.38435936 -17.75574112 14.16860008 18.38435936 -2.42598963
		 -15.23983288 29.43540192 -2.42598963 -13.60392094 29.43540192 -2.42598963 -15.23983288 18.38435936 12.80885315
		 -13.60392094 18.38435936 12.80885315 -13.60392094 18.38435936 -2.42598963 -13.60392094 18.38435936 -17.75574112
		 -15.23983288 18.38435936 -17.75574112 -15.23983288 18.38435936 -2.42598963 -15.44765282 18.54456711 12.73948002
		 16.40888405 18.54456711 12.73948002 -15.44765282 19.65671158 13.50738525 16.40888405 19.65671158 13.50738525
		 -15.44765282 30.57304001 -2.30256271 16.40888405 30.57304001 -2.30256271 -15.44765282 29.46089554 -3.070468426
		 16.40888405 29.46089554 -3.070468426 -15.44765282 29.4278717 -1.69486809 16.40888405 29.4278717 -1.69486809
		 -15.44765282 30.54001999 -2.46276855 16.40888405 30.54001999 -2.46276855 -15.44765282 19.62375641 -18.2727623
		 16.40888405 19.62375641 -18.2727623 -15.44765282 18.51160812 -17.50486183 16.40888405 18.51160812 -17.50486183;
	setAttr -s 52 ".ed[0:51]"  1 4 1 7 0 1 3 4 0 4 5 0 6 7 0 7 2 0 0 6 0
		 0 2 0 1 5 0 1 3 0 2 3 0 0 1 0 6 5 0 4 7 0 9 12 1 15 8 1 11 12 0 12 13 0 14 15 0 15 10 0
		 8 14 0 8 10 0 9 13 0 9 11 0 10 11 0 8 9 0 14 13 0 12 15 0 16 17 0 18 19 0 20 21 0
		 22 23 0 16 18 0 17 19 0 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0 24 25 0 26 27 0
		 28 29 0 30 31 0 24 26 0 25 27 0 26 28 0 27 29 0 28 30 0 29 31 0 30 24 0 31 25 0;
	setAttr -s 28 -ch 104 ".fc[0:27]" -type "polyFaces" 
		f 3 4 1 6
		mu 0 3 6 7 0
		f 3 2 -1 9
		mu 0 3 3 4 1
		f 3 -2 5 -8
		mu 0 3 0 7 2
		f 3 0 3 -9
		mu 0 3 1 4 5
		f 4 7 10 -10 -12
		mu 0 4 0 2 3 1
		f 4 -7 11 8 -13
		mu 0 4 6 0 1 5
		f 4 -4 13 -5 12
		mu 0 4 5 4 7 6
		f 4 -3 -11 -6 -14
		mu 0 4 4 3 2 7
		f 3 18 15 20
		mu 0 3 8 9 10
		f 3 16 -15 23
		mu 0 3 11 12 13
		f 3 -16 19 -22
		mu 0 3 10 9 14
		f 3 14 17 -23
		mu 0 3 13 12 15
		f 4 21 24 -24 -26
		mu 0 4 10 14 11 13
		f 4 -21 25 22 -27
		mu 0 4 8 10 13 15
		f 4 -18 27 -19 26
		mu 0 4 15 12 9 8
		f 4 -17 -25 -20 -28
		mu 0 4 12 11 14 9
		f 4 28 33 -30 -33
		mu 0 4 16 17 18 19
		f 4 29 35 -31 -35
		mu 0 4 19 18 20 21
		f 4 30 37 -32 -37
		mu 0 4 21 20 22 23
		f 4 31 39 -29 -39
		mu 0 4 23 22 24 25
		f 4 -40 -38 -36 -34
		mu 0 4 17 26 27 18
		f 4 38 32 34 36
		mu 0 4 28 16 19 29
		f 4 40 45 -42 -45
		mu 0 4 30 31 32 33
		f 4 41 47 -43 -47
		mu 0 4 33 32 34 35
		f 4 42 49 -44 -49
		mu 0 4 35 34 36 37
		f 4 43 51 -41 -51
		mu 0 4 37 36 38 39
		f 4 -52 -50 -48 -46
		mu 0 4 31 40 41 32
		f 4 50 44 46 48
		mu 0 4 42 30 33 43;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "DA79C634-4473-F6E2-004D-D3AD120FC0EB";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "561EBD0F-4FE6-714A-F315-A6B442C7C323";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "CF23E80B-474F-BAA1-FDD5-888A1483F00E";
createNode displayLayerManager -n "layerManager";
	rename -uid "9DAB7B5D-4CDD-F2E3-875B-42B13DE0E5AF";
createNode displayLayer -n "defaultLayer";
	rename -uid "BA9CA455-463E-E966-6CE0-ED98033B4231";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F9FA9F54-487B-8875-2731-90B661D3AA38";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "7C192595-42D0-4BA0-1DD8-FF86BDE654EC";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "99AACB4D-49AE-D579-AD2E-F6BE67D60361";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 328\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 328\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 328\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1119\n            -height 700\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 700\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 700\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "CF39A49B-4FF2-5576-5B2B-6CB4F5F8C342";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "groupId19";
	rename -uid "50CA3EC3-4654-E375-8F5E-A4974B0DAEA1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId20";
	rename -uid "26540BCE-4B11-1DD9-09B5-8A8F101ECC05";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId19.id" "pCube11Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube11Shape.iog.og[0].gco";
connectAttr "groupId20.id" "pCube12Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube12Shape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCube11Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube12Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
// End of Cabin.ma
