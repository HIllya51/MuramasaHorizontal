//<continuation number="0">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_002.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mb04_002.nss","MapBGLoop",true);
	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#ev151_���t��u�AȾ��_a=true;
	#ev151_���t��u�AȾ��_b=true;
	#ev151_���t��u�AȾ��_c=true;
	#ev151_���t��u�AȾ��_z=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb04_003.nss";

}

scene mb04_002.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb04_001.nss"

//���v�|�|���ޥå�
//��С����ǧ�~������������ʼ��˳त�㤬�ݤĤݤĤ�
//���k�����Ƥ������y�ǺŤ��Ƅӥ�`�Ȥ��ؤäơ�
//����K�Ĥ˷��t��uȫ�򤬤ۤ���ó�ˡ�
//��С���Ա��϶��Ϥˤ��o�¡���交Ȥ���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	Delete("�ϱ���");
	SoundPlay("@mbgm37",0,1000,true);

/*
	CreateTextureEX("�}�ţ֣�", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_a.jpg");
	CreateTextureEX("�}�ţ֣�", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_b.jpg");
	CreateTextureEX("�}�ţ֣�", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_c.jpg");
	CreateTextureEX("�}�ţ֣�", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_d.jpg");
	CreateTextureEX("�}�ţ֣�", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_e.jpg");
	CreateTextureEX("�}�ţ֣�", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_f.jpg");
	CreateTextureEX("�}�ţ֣�", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_g.jpg");
	CreateTextureEX("�}�ţ֣�", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_g.jpg");
	CreateTextureEX("�}�ţ֣�", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_g.jpg");
	CreateTextureEX("�}�ţ֣�", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_g.jpg");
	CreateTextureEX("�}�ţ֣�", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_g.jpg");
	CreateTextureEX("�}�ţ֣�", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_g.jpg");
	CreateTextureEX("�}�ţ֣�", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_g.jpg");
	CreateTextureEX("�}�ţ֣�", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_g.jpg");
	CreateTextureEX("�}�ţ�", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_g.jpg");
*/

	CreateTextureEX("�}�ţ֣�", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_a.jpg");
	CreateTextureEX("�}�ţ֣�", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_b.jpg");
	CreateTextureEX("�}�ţ֣�", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_c.jpg");
	CreateTextureEX("�}�ţ֣�", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_d.jpg");
	CreateTextureEX("�}�ţ֣�", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_e.jpg");
	CreateTextureEX("�}�ţ֣�", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_f.jpg");
	CreateTextureEX("�}�ţ֣�", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_g.jpg");
	CreateTextureEX("�}�ţ֣�", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_h.jpg");
	CreateTextureEX("�}�ţ֣�", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_i.jpg");
	CreateTextureEX("�}�ţ֣���", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_��.jpg");
	CreateTextureEX("�}�ţ֣���", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_k.jpg");
	CreateTextureEX("�}�ţ֣���", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_��.jpg");
	CreateTextureEX("�}�ţ֣���", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_m.jpg");
	CreateTextureEX("�}�ţ֣���", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_n.jpg");
	CreateTextureEX("�}�ţ֣���", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_o.jpg");
	CreateTextureEX("�}�ţ֣���", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_p.jpg");
	CreateTextureEX("�}�ţ֣���", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_q.jpg");
	CreateTextureEX("�}�ţ֣���", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_r.jpg");
	CreateTextureEX("�}�ţ֣���", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_s.jpg");
	CreateTextureEX("�}�ţ֣���", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_t.jpg");
	CreateTextureEX("�}�ţ֣���", 2002, Center, Middle, "cg/ev/ev151_���t��u�AȾ��_z.jpg");


	CreateProcess("�ץ�����", 150, 0, 0, "MapBGLoop");
	SetAlias("�ץ�����","�ץ�����");
	Request("�ץ�����", Start);

	FadeDelete("�}��ܞ", 2000, true);

//���ޥåפ��Ϥ˥쥤��`�ؤ�
//�����Ҥ����ˡ���Ѫ���ߵ[��ʤ�
//���ãǉ仯�˺Ϥ碌���y�ǺŤΆh���ʾ




/*

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010a]
���������з�䣬��Ц���ң���ȴ�¶���������
���ʽ�����֮̾��Ϊ��������������֮Ļ�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

*/
	WaitKey(2000);

	CreateColorEX("�}ɫ100", 3500, "BLACK");
	Fade("�}ɫ100", 2000, 500, null, false);

	CreateTextureEX("�}�ţֿ��ң�", 4000, Center, Middle, "cg/ev/ev002_�y�Ǻ��¼�����`����.jpg");
	Fade("�}�ţֿ��ң�", 2000, 500, null, false);

	WaitKey(1000);

	CreateTextureEX("�}������������", 5000, Center, Middle, "cg/sys/Telop/tp_�y�ǺŤΆh13.png");
	CreateTextureEX("�}�����֤����", 5000, Center, Middle, "cg/sys/Telop/tp_�y�ǺŤΆh14.png");

	Move("�}������������", 0, @0, @-20, null, true);
	Move("�}�����֤����", 0, @0, @+20, null, true);

	Fade("�}������������", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("�}�����֤����", 1000, 1000, null, true);
	WaitKey(5000);

	CreatePlainSP("�}��д", 10000);
	Delete("�}������*");
	FadeDelete("�}��д", 1000, true);

/*

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010b]
�������漣��ʥ������������ܿܿ����֮�񡣡�
���S��֮���İ����������������İ���һ��ͬ���ӵס���
�����������Ĺ�������ȡ������������ڷ���֮�С���
����������Ӥ�������֮ѪΪĸ�飬ʳ֮��ҹ���ø�Ϊʼ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

*/


	Fade("�}ɫ100", 2000, 0, null, false);
	Fade("�}�ţֿ��ң�", 2000, 0, null, true);
	WaitKey(1000);

	CreateTextureEX("�}�ţֿ��ң�", 4000, Center, Middle, "cg/ev/ev003_�y�Ǻ��¼�����`����.jpg");
	Fade("�}�ţֿ��ң�", 2000, 500, null, false);
	Fade("�}ɫ100", 2000, 500, null, false);

	WaitKey(1000);

	CreateTextureEX("�}�����֍���ҹ", 5000, Center, Middle, "cg/sys/Telop/tp_�y�ǺŤΆh15.png");
	CreateTextureEX("�}�������¤���", 5000, Center, Middle, "cg/sys/Telop/tp_�y�ǺŤΆh16.png");
	CreateTextureEX("�}������ľ©��", 5000, Center, Middle, "cg/sys/Telop/tp_�y�ǺŤΆh17.png");
	CreateTextureEX("�}�����֤�����", 5000, Center, Middle, "cg/sys/Telop/tp_�y�ǺŤΆh18.png");

	Move("�}�����֍���ҹ", 0, @0, @-60, null, true);
	Move("�}�������¤���", 0, @0, @-20, null, true);
	Move("�}������ľ©��", 0, @0, @+20, null, true);
	Move("�}�����֤�����", 0, @0, @+60, null, true);

	Fade("�}�����֍���ҹ", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("�}�������¤���", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("�}������ľ©��", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("�}�����֤�����", 1000, 1000, null, true);
	WaitKey(5000);

	CreatePlainSP("�}��д", 10000);
	Delete("�}������*");
	FadeDelete("�}��д", 1000, true);

/*

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010c]
�����������������޸裬�ص���Ц��ƣ����Թ�ޡ���
���������������⵻�棬���Է�ŭ�������ϲ�á���
�����뽣����֮�������b�������֮��������
��Ϊ�ڰ��뾲�����ػ�������֮�������ᴿ�����ҫ��԰ɡ���
��Ұ�ް�������ɣ���ԭҰ�۳ҡ��質�ţ������ţ���Ұ�ر��ܰɡ���
����񣬶�����ǰ���ּ������������Ǹ���֮���顣��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

*/

	Fade("�}ɫ100", 2000, 0, null, false);
	Fade("�}�ţֿ��ң�", 2000, 0, null, true);
	WaitKey(1000);

	CreateTextureEX("�}�ţֿ��ң�", 4000, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");
	Fade("�}�ţֿ��ң�", 2000, 500, null, false);
	Fade("�}ɫ100", 2000, 500, null, false);


	CreateTextureEX("�}������������", 5000, Center, Middle, "cg/sys/Telop/tp_�y�ǺŤΆh19.png");
	CreateTextureEX("�}���������ο�", 5000, Center, Middle, "cg/sys/Telop/tp_�y�ǺŤΆh20.png");
	CreateTextureEX("�}������������", 5000, Center, Middle, "cg/sys/Telop/tp_�y�ǺŤΆh21.png");
	CreateTextureEX("�}������������", 5000, Center, Middle, "cg/sys/Telop/tp_�y�ǺŤΆh22.png");
	CreateTextureEX("�}������ľ©��", 5000, Center, Middle, "cg/sys/Telop/tp_�y�ǺŤΆh23.png");
	CreateTextureEX("�}�����֪���ӻ", 5000, Center, Middle, "cg/sys/Telop/tp_�y�ǺŤΆh24.png");

	Move("�}������������", 0, @0, @-100, null, true);
	Move("�}���������ο�", 0, @0, @-60, null, true);
	Move("�}������������", 0, @0, @-20, null, true);
	Move("�}������������", 0, @0, @+20, null, true);
	Move("�}������ľ©��", 0, @0, @+60, null, true);
	Move("�}�����֪���ӻ", 0, @0, @+100, null, true);

	Fade("�}������������", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("�}���������ο�", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("�}������������", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("�}������������", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("�}������ľ©��", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("�}�����֪���ӻ", 1000, 1000, null, true);
	WaitKey(5000);

	CreatePlainSP("�}��д", 10000);
	Delete("�}������*");
	FadeDelete("�}��д", 1000, true);


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb04_003.nss"



function MapBGLoop()
{

$MapBGLoopFade = 2000;
$MapBGLoopWait = 1000;



	Fade("@�}�ţ֣�", 0, 0, null, true);
	Fade("@�}�ţ֣�", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@�}�ţ֣�", 0, 0, null, true);
	Fade("@�}�ţ֣�", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@�}�ţ֣�", 0, 0, null, true);
	Fade("@�}�ţ֣�", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@�}�ţ֣�", 0, 0, null, true);
	Fade("@�}�ţ֣�", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@�}�ţ֣�", 0, 0, null, true);
	Fade("@�}�ţ֣�", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@�}�ţ֣�", 0, 0, null, true);
	Fade("@�}�ţ֣�", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@�}�ţ֣�", 0, 0, null, true);
	Fade("@�}�ţ֣�", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@�}�ţ֣�", 0, 0, null, true);
	Fade("@�}�ţ֣�", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@�}�ţ֣�", 0, 0, null, true);
	Fade("@�}�ţ֣�", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@�}�ţ֣���", 0, 0, null, true);
	Fade("@�}�ţ֣���", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@�}�ţ֣���", 0, 0, null, true);
	Fade("@�}�ţ֣���", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@�}�ţ֣���", 0, 0, null, true);
	Fade("@�}�ţ֣���", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@�}�ţ֣���", 0, 0, null, true);
	Fade("@�}�ţ֣���", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@�}�ţ֣���", 0, 0, null, true);
	Fade("@�}�ţ֣���", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@�}�ţ֣���", 0, 0, null, true);
	Fade("@�}�ţ֣���", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@�}�ţ֣���", 0, 0, null, true);
	Fade("@�}�ţ֣���", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@�}�ţ֣���", 0, 0, null, true);
	Fade("@�}�ţ֣���", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@�}�ţ֣���", 0, 0, null, true);
	Fade("@�}�ţ֣���", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@�}�ţ֣���", 0, 0, null, true);
	Fade("@�}�ţ֣���", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@�}�ţ֣���", 0, 0, null, true);
	Fade("@�}�ţ֣���", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@�}�ţ֣���", 0, 0, null, true);
	Fade("@�}�ţ֣���", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);


}
