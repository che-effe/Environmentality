google.maps.__gjsload__('overlay', '\'use strict\';function KF(a){this.j=a}M(KF,V);Ya(KF[H],function(a){"outProjection"!=a&&(a=!!(this.get("offset")&&this.get("projectionTopLeft")&&this.get("projection")&&ce(this.get("zoom"))),a==!this.get("outProjection")&&this.set("outProjection",a?this.j:null))});function LF(){}function MF(){var a=this.gm_props_;if(this[ap]()){if(this[Cc]()){if(!a.Wf&&this.onAdd)this.onAdd();a.Wf=!0;this.draw()}}else{if(a.Wf)if(this[Mc])this[Mc]();else this[Db]();a.Wf=!1}}function NF(a){a.gm_props_=a.gm_props_||new LF;return a.gm_props_}function OF(a){ml[Zc](this);this.la=O(a,MF)}M(OF,ml);function PF(){}\nPF[H].j=function(a){var b=a[Zo](),c=NF(a),d=c.lc;c.lc=b;d&&(c=NF(a),(d=c.Fa)&&d[Io](),(d=c.Jh)&&d[Io](),a[Io](),a.set("panes",null),a.set("projection",null),N(c.$,Q[xb]),c.$=null,c.cc&&(c.cc.la(),c.cc=null),pv("Ox","-p",a));if(b){c=NF(a);d=c.cc;d||(d=c.cc=new OF(a));N(c.$,Q[xb]);var e=c.Fa=c.Fa||new xu,f=b.W();e[p]("zoom",f);e[p]("offset",f);e[p]("center",f,"projectionCenterQ");e[p]("projection",b);e[p]("projectionTopLeft",f);e=c.Jh=c.Jh||new KF(e);e[p]("zoom",f);e[p]("offset",f);e[p]("projection",b);\ne[p]("projectionTopLeft",f);a[p]("projection",e,"outProjection");a[p]("panes",f);e=O(d,d.X);c.$=[Q[z](a,"panes_changed",e),Q[z](f,"zoom_changed",e),Q[z](f,"offset_changed",e),Q[z](b,"projection_changed",e),Q[z](f,"projectioncenterq_changed",e),Q[w](b,"forceredraw",d)];d.X();b instanceof og&&(mv(b,"Ox"),ov("Ox","-p",a))}};var QF=new PF;Ff.overlay=function(a){eval(a)};If("overlay",QF);\n')