//<continuation number="970">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_019.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#bg047_�������_�c_02=true;
	#bg003_�Ĥ�Ұ_02=true;
	#ev269_�x��Ȋ�_a=true;
	#bg063_���ӘS��������_01=true;
	#ev269_�x��Ȋ�_b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb04_020.nss";

}

scene mb04_019.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb04_018.nss"

//��ȼ�����bg049���ã�
//���|�������Q
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg047_�������_�c_02.jpg");
	CreateSE("SEL01","se����_����_�ϑ�01");
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	SetNwC("cg/fw/nw�����_��ʿ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯�����_����
<voice name="����㣯�����_��" class="����������" src="voice/mb04/0190010e308">
�����ô�ξ����


{	NwC("cg/fw/nw�����_��ξ.png");}
//������㣯���ô�ξ��
<voice name="����㣯���ô�ξ" class="������Ů��" src="voice/mb04/0190020e027">
���ְ��Ľ�פ�������н���ʲô�ط��ˣ���


{	NwC("cg/fw/nw�����_��ʿ.png");}
//������㣯�����_����
<voice name="����㣯�����_��" class="����������" src="voice/mb04/0190030e308">
���Ѿ����������ӣ���


{	NwC("cg/fw/nw�����_��ξ.png");}
//������㣯���ô�ξ��
<voice name="����㣯���ô�ξ" class="������Ů��" src="voice/mb04/0190040e027">
�����𡭡�ʱ��Ҫ���ˡ�
���ã��������Ͻ����������ʡ���


//������㣯���ô�ξ��
<voice name="����㣯���ô�ξ" class="������Ů��" src="voice/mb04/0190050e027">
��֮��ר�Ľ��зŻ��ж���
������������ջ��ǻᱻ��פ������ռ��û�б�Ҫ
Ϊ���������κζ�������


{	NwC("cg/fw/nw�����_��ʿ.png");}
//������㣯�����_����
<voice name="����㣯�����_��" class="����������" src="voice/mb04/0190060e308">
������������񶼻�����������������


{	NwC("cg/fw/nw�����_��ξ.png");}
//������㣯���ô�ξ��
<voice name="����㣯���ô�ξ" class="������Ů��" src="voice/mb04/0190070e027">
���޷���
������Ҳ����Դ��
���»��Ҳֻ��Ϊ���������á���


//������㣯���ô�ξ��
<voice name="����㣯���ô�ξ" class="������Ů��" src="voice/mb04/0190080e027">
��Ϊ������Ҫ����������ʥս������Ҫ����޶�
���ֻ���ɱ��ҡ���У�
��ȫ���ջ٣���


//������㣯���ô�ξ��
<voice name="����㣯���ô�ξ" class="������Ů��" src="voice/mb04/0190090e027">
�����Ǵ���!!��


{	NwC("cg/fw/nw�����_��ʿ.png");}
//������㣯�����_����
<voice name="����㣯�����_��" class="����������" src="voice/mb04/0190100e308">
���ǣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����`�����⤨��`��`��
	ClearWaitAll(2000, 2000);

//������ϡ�bg003���ã�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg003_�Ĥ�Ұ_02.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������һ����¡���ɽ���ϸ������ⷬ�龰��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm34",0,1000,true);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0190110a02">
�����ǡ�����


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0190120b40">
����Щ�쵰����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�������ޡ�
�������װ����ö���¡�������ô�����������ޡ�
�����<RUBY text="��������">�����ֶ�</RUBY>����������֪�����������ޡ�

���Ӷ����ʣ�
���Ĵ��ݻ�
��ɱ¾ƽ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0190130b40">
����������������ǰ��Ұ��
����֮���������ŭ�������ˣ���


//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0190140b40">
���㲻������ᣬ����������������
�����ܿ���������ճ���!?
������!!��


{	FwC("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0190150a02">
������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��װ�ץե��`��
	StR(1000, @0, @0,"cg/st/stһ��_װ��_�Ʒ�a.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fwһ��_����a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060a]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0190160a02">
�������������𾡶��
�������������Ͼ�а�񡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��װ��", 3000);
	StR(1000, @0, @0,"cg/st/stһ��_װ��_�Ʒ�b.png");
	FadeStR(0,true);
	FadeDelete("�}��װ��", 300, true);

	SetFwC("cg/fw/fwһ��_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060b]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0190170a02">
������֮������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���|��һ�k
//��ҕ�礬�ؤäơ��Фä��ꡣ
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se���L_�|��_ȭ�|�k�h01");
	CreateSE("SE01b","se����_�n��_ܞ��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫѪ", 5000, "#CC0000");
	DeleteStA(0,true);
	FadeDelete("�}ɫѪ", 1000, true);

	CreateEffect("�}����", 3000, Center, Middle, 1024, 576, "Plain");
	Request("�}����",Passive);
	Fade("�}����", 0, 500, null, true);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Shake("�}����", 600, 0, 6, 0, 0, 1000, Dxl2, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�������ף�

��������ô�ˣ�
���ҡ��������ˣ�

��Ϊʲô��
��
�������������ȡ�

{	CreateSE("SE01","se����_Ѫ_�����01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
�����ִ��������ܵ���ճ�ȵĴ��С�
��ָ��մȾ��ճ���Һ�塣

�����Ƶ�������ģ�Һ�塣

����������籡������
����Ѫ�ĵط�������������ָ��������ģ�
�Ǹ�ϸ΢�İ��ݡ�

��һ��СС�ģ�Ѫ�������Ķ���

�������������ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����ʤ�
	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190180b21">
��ϣ���㲻Ҫ�����ء�
�������н��Ѿ��´������ˡ����ض��������
���Ҷ����ǣȣѺ����Ǻš���


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190190b21">
��ȫ���ھ����ܱ�ȫ���ʵ�����£����ػ��
��Ϊ������ݵĴ�ս��׼������


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190200b21">
��������ʵ������Щ����������޹ؽ�Ҫ����


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0190210b40">
������ʲô�ˣ�
���������ð��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�}����");

//���x��
//�􊗤�ؓ�����֤˳��Ӵ�ΰפ����ߣ��ɤ��\��Ѫ�ΝB�ߤ��꣩��ȭ�|

	CreateTextureEX("�}����100", 100, Center, Middle, "cg/ev/ev269_�x��Ȋ�_a.jpg");
	Fade("�}����100", 1000, 1000, null, true);

	Wait(1000);
	CreateVOICE("һ��","mb04/0190220a02");
	CreateVOICE("����","mb04/0190230b40");

	SetBacklog("����������!?��", "voice/mb04/0190220a02", һ��);
	SetBacklog("����������!?��", "voice/mb04/0190230b40", ����);

	Delete("@text0080*");

	MusicStart("һ��",0,1000,0,1000,null,false);
	MusicStart("����",0,1000,0,1000,null,false);

	SetFwR("cg/fw/fwһ��_����.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//����һ���������ڣ�
����������!?��
����������!?��

</PRE>
	SetTextEXR();
	Request("@text0090", NoLog);
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


/*
//������һ�r�˱�
//��ͬ�r�k��

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0190220a02">
������!?��


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0190230b40">
������!?��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

*/

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����ǿ̧��ͷ�������������е��ǡ���һ��˵������
��Ϊ�ϳɣ���������òȴ����������ȫ���������ꡣ
����ֹ��һ�ˡ�

��������һ����Ľ�С��Ů�ӡ�
���䲻������������٣���Ҳ�Ǹ��������Ů�ӡ�

���������У�������ǹ��

��������һ����������ء�
�����������Ц����һ�㡣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�x��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190240b21">
��Ӵ����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��������Ц�ţ����˻��֡�
���������Ķ������������Ǹ�����Ů���´����ֱ�Ҳ
����ػζ��š�

����������弫Ϊ������Ե�ʣ�Ů�˵�ͷҲ����ش�
�ţ�û��Ҫ̧������ӡ�
���������۾�ȴ����һ�ɹ������������ͷ���ķ�϶
��ע�����ҡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwһ��_����a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0190250a02">
�������㡭����


{	FwR("cg/fw/fw�x��_Ц��.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190260b21">
���㲻��ʶ����
������ʶ�İɡ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����������Ц�š�
������΢Ц��͸��һ˿��Ů���еķ��顣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�x��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190270b21">
������֪����Ŷ��
����ֻ������һ�Ρ������������������˺�
��̵�ӡ�󡣶��ҵ�ʱ������һ����Ǹ�����
��������ô��������


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190280b21">
����������ˣ������Ǹ�ɮ���ᵽ���㣬�ҿ�
����Ͱ������ˡ�
��û��Ŷ������λ���˲�����ˡ���Ȼ�µ���
����Щ�Ѳ�ֵһ�ᡣ��


{	FwR("cg/fw/fw�x��_Ц��.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190290b21">
����һ��ʼ��֪�������ǵ��ˡ�
���ǰ��������ǣ���λ�����Ǹ����¶�ϲ����
��һ�����ˡ�Ҫ�ǵ�ʱѸ����ʰ����ͺ��ˡ�
����ȴ����ִ���ڷ�ʽ���ɡ���


{	FwR("cg/fw/fw�x��_ͨ��.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190300b21">
����󷴱�������ɱ��
�����졣�������ϡ�����˵�ٳ�ȥ��һ�£���
����ȥ�ˡ�����֮���ɮ��Ҳû�л�����Ϊʲ
ô��ʱ��û����ֹ���أ���


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190310b21">
������������֮ǰ��
��Ϊʲô��û���ڵ�һ�ۿ������ʱ�򣬾ͽ�
��նɱ�أ���


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190320b21">
���㡣û��<RUBY text="������">������</RUBY>������ɣ�
�������Ǹ����ˡ���


{	FwR("cg/fw/fw�x��_Ц��.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190330b21">
����Ȼ��ɮʲôҲû��˵�����Һ��������ɮ
������ģ�������<RUBY text="��������">��Ū֮��</RUBY>�ģ������㡭��
�Ǻǣ���


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190340b21">
�����ԣ����㡣���Ǹ�����֮ҹ����ɮ�Ķ���
�������ʵؾ����㡣
����ɮһ��������������ʱ�����̫Ͷ���׹
��ڤ���ˡ���


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190350b21">
����˵��û��ɡ�����
���ԡ�û����Ȼ����������


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190360b21">
�������㡣����ɱ�˸�ɮ��
����֪��������


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0190370b40">
����������һ�����ô���£�
���������𣿡�

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
�����ڲ����С��˵����
�����ڻ������벢����֡�����Ļ���Ȼ��������������
ȴ֧�����顣

������ȴ�����ˡ�
������������˵�Ļ���

��Ҳ��������������˭��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���Хå������ӘS�Ǥ��x��
//���륷�`��ޤȤ�
	OnSE("se�M��_����_�ե�å���Хå�01",1000);
	CreateColorEXadd("�}��ܞ", 10000, "#FFFFFF");
	Fade("�}��ܞ", 600, 1000, null, true);

	CreateTextureSP("�}���뱳��", 6000, Center, Middle, "cg/bg/bg063_���ӘS��������_01.jpg");
	StR(7000, @0, @0,"cg/st/st�x��_ͨ��_˽��.png");
	CreateColorEXmul("�}����Ļ", 8100, "#847000");
	FadeStA(0,true);
	Fade("�}����Ļ", 0, 400, null, true);

	Fade("�}��ܞ", 300, 200, null, true);

	WaitKey(500);

	Fade("�}��ܞ", 400, 1000, null, true);
//	StR(1000, @0, @0,"cg/st/st�x�劗��_ͨ��_˽��a.png");
//	FadeStA(0,true);
	FadeStA(0,true);
	Delete("�}����*");
	FadeDelete("�}��ܞ", 600, true);
	SoundPlay("@mbgm24",0,1000,true);

	SetFwR("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0190380a02">
���㡭��
�����Ǹ��ֺ��е�ʲô�ˣ���


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0190390b40">
���ţ���


{	FwR("cg/fw/fwһ��_ŭ��c.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0190400a02">
��������ͯ�ĵġ�����ͯ�𣿡�


{	FwR("cg/fw/fw�x��_Ц��.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190410b21">
��û����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
����Ȼ�������ˣ���ȴ��֪�����֡�����΢΢��Ц�ˡ�
���ܿ��ĵ�Ц�ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw�x��_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190420b21">
��̫���ˡ���ô�������������˭��
���ѵ����ص��������㣬Ҫ����һֱ�벻����
��˭�����ҿ��ǻ�����ĺ����ĵġ���


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190430b21">
��û���Ҿ���ͯ�Ĵ������Ե��Ǹ���ͯŶ��
 ��һ��С�㡣������Ȼ��Ӧ�ò�����������


{	FwR("cg/fw/fwһ��_��ʹ.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0190440a02">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
����Ȼ���Ա���������һ������ֹ��ס�ؿȸ���ͣ��
��һ�ɶ��ĸв��ϴӸ��������ȴ�ð����ӿ�Ϻ�����

�����±���Ӧ�����Ļ�������Ӧ�ø�����ȥ�����¡�
�������ڶԷ��Ѿ�˵��������׵�����£����µ�״
��Ҳ���������ˣ�������Ҫ��ᶼ�����ܡ�

������ͯ�ĵ���ͯͻȻ���֣�����ǹ�������ҡ�
����ô������Ŀ���ǣ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0190450b40">
��������������𣿡�


{	FwR("cg/fw/fw�x��_ͨ��.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190460b21">
�����𣿡�

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
���ܵ����ڳ�Ū�����ʣ���������ѧ��㷴�ʵ���
��������һ�ν��������ظ���һ�������¶
��С����޹��ı���ݸ����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�x��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190470b21">
���һ�û�����ôԶ����


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0190480b40">
��ʲô��������


{	FwR("cg/fw/fw�x��_ͨ��.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190490b21">
����ֻ���룬�ټ���һ����ѡ�
��������ζ����ټ���һ�档��


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190500b21">
������֮�Ⲣ��������˼��
����Ϊ�����ѵ����������𣿡�


{	FwR("cg/fw/fw�x��_Ц��.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190510b21">
����Ϊ����ǰ����Ǳ��ȵ���˾��ص��˰���
����Ȼ������ζ�����ˣ�������㣡
��ӽ��㡪����


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190520b21">
�������˵����
�������ѵ�����������Ȼ����!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���k�h
//�����ڡ����`�ɡ������`��
	CreateSE("SE01","se���L_�|��_����02");
	CreateColorSP("�}ɫ��", 5000, "#FFFFFF");

	Delete("�}����100");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(1);
	FadeDelete("�}ɫ��", 300, false);

	Wait(1000);

	SetFwC("cg/fw/fwһ��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0190530a02">
��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
����׼��ü�Ķ������ӵ�����;�����н�ס��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�x��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190540b21">
��������


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0190550b40">
�����������ν��<RUBY text="����">˵��</RUBY>�𣿡�


{	FwC("cg/fw/fw�x��_ͨ��.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190560b21">
��û��Ŷ��
����ɲ����Բ�Ҫ�������أ���


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0190570b40">
������������������������
���������������𡣡�


//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0190580b40">
���ڰڳ����Ĺ������ҳ�����֮ǰ���Ȼ��׿�
�������������µĶ��аɡ���


{	FwC("cg/fw/fw�x��_ͨ��.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190590b21">
��������


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0190600b40">
���ߡ���Ӧ���Ǳ�˭������ɣ����������̷�
ʱӦ�ÿ��ú�����ɣ�
��������û�п����ģ��������µĶ��У���Ҳ
�����ۿ������ɣ���


//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0190610b40">
��������Ӧ�õı�Ӧ��
�������ֻ֣������©!!��


//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0190620b40">
���Ǹ�����������䵽������ȫʬ�ľ��أ�
����Ҳ���������๼������������������
�������Ƿǰɣ�С�ӡ���


//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0190630b40">
�����˸���û�ʸ��Ḵ��
����ֱ�Ǻ����޳�֮ͽ!!��


{	FwC("cg/fw/fw�x��_����.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190640b21">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
���������������ͷ��
���ƺ������ڵ���������ס�ˡ�

���������ļ������ز����š�
���·��ڿ���һ�㡣

���������ԡ�
�����������ġ�

������ע�⵽����
����������û�п�������ֻ�е��ڵ��ϵ��Ҳſ��õ���

��������Ц��
������ȥ��û���ܵ��˺���Ҳû�пޡ�

���������ĵ�Ц�š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0190650b40">
�����������ڽ������е���
��������֮ʹ�ߣ���������Ѹ�١�׼ȷΪԭ��
�Զ���ʩ����ߵȵ������


//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0190660b40">
���������췣����������췣��
��������������ڴˣ���


//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0190670b40">
����֮������һ˿�ۻࡣ
��С�ӣ��㾹�������帴�𣡡�


//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0190680b40">
���������й�Լ����޵����Թ�ߣ��˺�������
����Ϊ������ԭ�¡�
�����ھ�Ϊ�Լ����������ܱ�Ӧ�ɣ���


//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0190690b40">
���㽫�ܵ�ͬ�ȵ��˺���
�������ڿɲ�����������걣����֮��Ķ�����
δ��������Ρ�������Ϊ����������֮�ˣ���
Ӧ��������Ȼ�ػ��š�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������������
//�����ߤ�Ͷ���Ĥ����x��
//���Ф���á�
//�������\
	CreateSE("SE01","se���L_����_�L��������צ02");
	CreateSE("SE01b","se����_����_�����p��01");
	CreateSE("SE01c","se�M��_ճ���|_���띢���04");

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);

	SetVolume("@mbgm*", 100, 0, null);
	CreateColorSP("�}ɫ�\", 5000, "#000000");
	MusicStart("SE01c",0,1000,0,1200,null,false);

	Wait(500);

	SetFwC("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0190700b40">
����!?��


{	FwC("cg/fw/fwһ��_��ʹ.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0190710a02">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
��ʲô��
���������ӳ���ĳ��������

����һ�ֳ�ǹ����һֻ�ֱ���һ��������
�����ƺ��������еĶ������˳�����

��ĳ�֡���Һ��״�ġ���
���������滹�����Ź���Ķ�����

��Ӳ���м���������Ķ�����
����һ��Ӳ����������ҵ����ϡ�

�������ù���
����ɫ����ϸ�ġ�

{	CreateSE("SE02","se�M��_ճ���|_���띢���04");
	MusicStart("SE02",0,1000,0,1000,null,false);}
����һ�����������������顣
���ܴ�����

�����滹ճ��Һ�壬��һЩ����Ķ�����
��Һ����<RUBY text="����">ճ��</RUBY>�ģ�������<RUBY text="����">���</RUBY>�ġ�

������ʲô��

��������΢˼����һ����֪���𰸡�
������֪Ϊʲô����һ�㶼��Ըȥ�롣

����Ըȥ���ס�
����Ը֪�����⾿���Ǻ��

����Ϊ��
���������������ⶼ��<K>��������<K>������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ѫ����ȹǡ����b�������ӤΥ���`����
//��������ݳ���׷���زģ�������`��������
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("SE01");
	CreateColorSP("�}ɫѪ", 6000, "#CC0000");
	CreateTextureSP("�}����100", 5100, Center, Middle, "cg/ef/ef005_����Ѫ�~.jpg");


	FadeDelete("�}ɫѪ", $�Еr�g, false);

	SetFwC("cg/fw/fw�x��_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190720b21">
���ǺǺǡ���

//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190730b21">
���Ǻǣ�����������


{	FwC("cg/fw/fw�x��_ͨ��.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190740b21">
������ء�����


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190750b21">
�����ҵ�ֶ�ӡ���


{	FwC("cg/fw/fw�x��_ͨ��.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190760b21">
���Ǹ�ɮ�Ķ��ӡ���

//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190770b21">
����<RUBY text="��">��</RUBY>���ĺ��ӡ���

//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190780b21">
����ϧ����
����һ�����������Ѿ����⸱ģ���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���x��Ȋ�
//�􊗤��������븯���С�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg003_�Ĥ�Ұ_02.jpg");
//	StR(1000, @0, @0,"cg/st/st�x�劗��_ͨ��_˽��b.png");
//	FadeStR(0,true);
	FadeBG(0,true);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/ev/ev269_�x��Ȋ�_b.jpg");
	FadeDelete("�ϱ���", 500, true);
	FadeDelete("�}��ܞ", 500, true);
	SoundPlay("@mbgm28",0,1000,true);

	SetFwR("cg/fw/fw�x��_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190790b21">
����������������������


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190800b21">
��Ц�ɡ�
��Ц������


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190810b21">
�����������ν�ģ�������ҵ��³���
������Ӧ�õ��³�����


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190820b21">
����ɮ�����ò������Ρ�
����Ϊ���ҵĽ�㣬
Ҳ�ڿ����ǰ�⾰�����ˡ���


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190830b21">
������ô�������ܵ��ˡ�
����Ϊ�����˵ĸ�ɮ�����Ǹ��������ĸ�ɮ��
�Ǹ��ܸ����Ǵ����޾����ţ���ȴ�����Ƿ���
�����𾴵ĸ�ɮ����������Ǹ���״!!��

//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190840b21">
�����Ͼ�Ҫ����Ľ�㣬�ڷ��֮���¥����
������������
������������������������⸱���ӣ���


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190860b21">
������������ʲô!!��


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0190870b40">
��������


{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0190880a02">
��������


{	FwR("cg/fw/fw�x��_��Ц.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190890b21">
��ɱ����ɮ�������������ҵ�ֶ�Ӻͽ�㡣
��Ϊʲô�������ˣ����Ǳ�Ӧ����ղ�����ô
˵���ء�����Ϊ��ɮ���˻��¶����µı�Ӧ����


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190900b21">
������δ��̫����ˡ��Ҳ����ס�
���ҵĽ�㾿����������ʲô����

//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190910b21">
������δ������ֶ����������ʲô��
������ΪʲôҪ<RUBY text="������">�ܵ���</RUBY>���Ʋã���

//�����ߣ����ʥꥪ����
//�����ޤ����ǰ���P�����ʤ��ƤϤʤ�ʤ�
//���ɤȤ����ΤϺΤ���������
//���狼��ʤ����狼��ʤ��ʡ�
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190920b21">
�������Ǻ������ɣ�ʹ��һ����������δ����
֮ʱ�ͱ��������Ʋá���
�����޷���⡣���������⡣��

{	FwR("cg/fw/fw�x��_Ц��.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190930b21">
�����Ѿ�û���ˡ���һ�ж��Ѿ������ˡ�
����ɮ����㡢ֶ�ӡ��ҵ�һ�ж���������ˡ���


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190940b21">
��������Ķ�����
��һ�ж������㡣��


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190950b21">
��û�а취��
��ֻ�н������ѳɶ��ֵ���ʵ����

{	FwR("cg/fw/fw�x��_��Ц.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0190960b21">
����ô�ͽ��ҵ����ж������㣡��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}����100", 500, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
��������ô˵�š�
�������ҵ����Զ���������

{	CreateSE("SE01","se�M��_ճ���|_���띢���01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
����һ��<RUBY text="����">��Ƭ</RUBY>�������ҵĿ��С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSPmul("�}ɫ100", 1500, "RED");
	FadeDelete("�}ɫ100", 500, true);

	SetNwC("cg/fw/nwһ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0190970a02">
������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
�����ü���͸���ģ������Ц�ݡ�
�����õ�Ů�ˣ�����ڿն�������
�����۰����顣

����������ȥ��ĸ�׵�ע���£�
������������Ż�����������������Ӥ����

���ۻࡣ
����Ͼ��
������Ϊ�Ǽ��˶�������������������һ��

������������
��
���Ҽǵ����ζ����

����������ζ����

��<RUBY text="��������">Υ������</RUBY>�ģ����֮ζ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb04_020.nss"