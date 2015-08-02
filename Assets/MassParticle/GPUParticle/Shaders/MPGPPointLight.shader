﻿Shader "GPUParticle/PointLight" {

Properties {
    _MainTex ("Base (RGB)", 2D) = "white" {}
    _Color ("Color", Color) = (0.8, 0.8, 0.8, 1.0)
    _Glossiness ("Smoothness", Range(0,1)) = 0.5
    _Metallic ("Metallic", Range(0,1)) = 0.0
    g_size ("Particle Size", Float) = 0.2
    g_fade_time ("Fade Time", Float) = 0.3
    g_spin ("Spin", Float) = 0.0
}

SubShader {
    Tags { "RenderType"="Opaque" "Queue"="Geometry+1" }

CGPROGRAM
#pragma target 5.0
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow

#define MPGP_STANDARD
#include "MPGPSurface.cginc"
ENDCG
}

FallBack Off
}
