//<continuation number="340">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_008.nss_MAIN
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
	#bg033_���Lլ����˽��_03a=true;
	#ev148_һ���ȣ�_a=true;

//��������ݳ��������ǵ��h���Ƥ�����Τ����ͥ��Х�رܤΤ��ᐙ���K�ˤޤǤȤäƤ���������
	//#ev007_������Ƥ���Ů��=true;

	#ev148_һ���ȣ�_b=true;
	#ev149_һ���ȣ�_a=true;
	#ev149_һ���ȣ�_b=true;
	#ev149_һ���ȣ�_c=true;
	#ev149_һ���ȣ�_d=true;
	#ev150_һ���ȣ�_a=true;
	#ev150_һ���ȣ�_b=true;
	#ev150_һ���ȣ�_c=true;
	#bg033_���Lլ����˽��_03b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb03_009.nss";

	//��ꥳ�쥯������á���������������
	ReConquest();
	#mb03_008=true;
	if($PLACE_reco){
		RecoOut();
	}
}

scene mb03_008.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//============================================
//��ꥳ�쥯������á���������������
if(!$PLACE_reco){
//============================================
..//������ָ��
//ǰ�ե����롡"mb03_007.nss"
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg033_���Lլ����˽��_03a.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

//============================================
//��ꥳ�쥯������á���������������
}else{

	//״�B���x
	OnBG(100,"bg033_���Lլ����˽��_03a.jpg");
	FadeBG(0,true);

	//�ꥳ����Ĩ��
	RecoIn();
}
//========================================================

	SoundPlay("@mbgm32",0,1000,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/mb03/0080010a00">
�������Ҳ��ó�Ӧ��Ů�ԡ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0080020a02">
���Ҷ���
���ܹ��о���������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0080030a00">
����ֻ֪���ֱ���������
��������û��ϵ�𣿡�


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0080040a02">
���ǡ���
��û��ϵ����


//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0080050a02">
�����������źá���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0080060a00">
�������ˡ�
�����ڡ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0080070a02">
������ġ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 1000);

//��e�����ȥå�
//�����Z�äƤǤ⣡���L����������צ��������`!?��
//���߹ǤǾ������ޤ���Ѫ�T����쥤�ס�
//�����쥨���Τ��Ɇ��ʤΤǱ�����


//���£ǣͣ��ҥ����
//��һ���ȣ����ڸ���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateTextureSP("�}�ţ֣���", 4000, Center, Middle, "cg/ev/ev148_һ���ȣ�_a.jpg");
	Delete("�ϱ���");

//	SoundPlay("@mbgm28",3000,1000,true);
	SoundPlay("@mbgm15",3000,1000,true);
	FadeDelete("�}��ܞ", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�������ʾ�֪��һ����û�����Ծ��顣

��̧�������°ͣ��������Ĵ���������˵����ڣ�����
˵��Ϊ����΢�������Ŀ־塣

�����ǡ��������ȴ�⿪���ҵĽ�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ev007��
	CreateTextureEXadd("�}�ݣţ�", 4100, Center, Middle, "cg/ev/ev007_������Ƥ���Ů��.jpg");
	Fade("�}�ݣţ�", 600, 750, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����������Ĵ������ҳ���Ů����ζ��
����������̰���������˵��������е��Ȼ��ڸ��ա�

���ܾ���ǰ��
����һ�ν�Ů��ѹ�����£�����֧��������ĳ嶯����
�����޷����ܵĲ�������һ�̷��ڣ�������ӿ������֫
ĩ�ˡ�

�������һ����������Ұ���ݱ䡣

���ǵġ��������Լ�˵��������
��������ΰ�Ů�ˣ���ֻ֪��<RUBY text="������">��һ��</RUBY>������


</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}�ݣţ�", 600, false);


	SetNwR("cg/fw/nwһ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0080080a02">
����������!?��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��Ҳ���Ǹо������ҵı仯�������е�һ���ڲ�����
��������ᣬ�Ҽ������Ѿ���ʼ�Ķ������������ͷ��
����Ů�Ĵ����������롣

���ӹ⻬�������������е����ĳ�����
����ͷ������Ů���ϴ����������ڲࡣ

������˵���ǶԴ���Ů����ȷ������
�����ǳ嶯��������ô����

��һ��һ�����Ż��˰ɣ�������˳�ӡ�
���Ȳ�������Ҳ����������˳�ذ����彻���ҡ�

��������̬�ȸ��ӵ�ȼ���ҵ����ԡ�
����ͷ��ʼ�˸����ı��С�

��ǿ�д����������ݵ����飬�������С�
������ǿ��һ��û���κι��ǡ�

�����������ɨ����򦣬̽�����ڲ���һ������û���ر�
֮����ע����Ͷ���˵��ӵ�������������ˡ�����Ů
����ͷ��
��������Ψһ���������ô���ܷŹ���

����ͷ����ͷ������ơ�
����������֣�Ʒ����

��������������˵���ͼ��

����Ů��������ͷ�����޲ߵر���Ū�š�
��������Ϊ���ȵı�Ű���������顪��ˮ����䵽�˽���
�Ĵ����ϣ����ݳ���һ��ʵ��

��������
������ԭ���������Դ�������¶��

��һ��֪������һ�С�
��ԭ���ͺ���Ʒ�п��Ե�Ұ�޸������͡�

����˱�촽��
������������խ��֮��ӿ����Һ�塣

��������������֮����
�����ڱ����е���Ů������һ���ӱ�û��ȡ�������Ǻ�
�ߵ�Ե�ʰɡ�

�������޷���Ϊ������ֹͣ��Ҫ�ء�
��������������ҵ����衣��һ����˱��

��ֱ��һ���ڸ����
��������Ȼ�����㡣

����������Ů����ͷ²���ҵĿ��С�
����ҧ����ס����Ķ�����

��Ҫ�����Դ��ҡ�
���������Ž�Ӳ��������Ͷ�����������ʡ�

������������
�����Ѿ��������ˡ�

��һζ���Ӷᡣ

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nwһ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0080090a02">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����������ͷ�����Ӷᣬ��Ů�Ļ����ҡ�
���������޴롣�����ҵ�˫��֮�У��̿֡����󡭡�ȴ
���޷��˼���һ�С�

������ѹ�������Ƶı���ʵʩ�����������
�����ҵ���˱�ſ��в������ҵ�����ѹե�š�������
������Һ��

��һ�������ұ��ϵ��������ظ����š�
��ֻ������ָ���ں��޵ֿ���������ˡ��

��������ǡ�

���嶯����ֹͣ��Ҳ������ֹͣ��
���·���Ϊ�����������Σ��������<RUBY text="����">��</RUBY>����
һ������ͷ�ڲࡪ����Ƭ��ϸ���۵���ء�

����������˼�룬ƾ�豾�ܹ۲������ķ�Ӧ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nwһ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0080100a02">
���š�����


//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0080110a02">
������������!?��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ȣ���֡�һ�����ۤ�������ʎ�ʸФ���
	CreateTextureSP("�}�ţ֣���", 3990, Center, Middle, "cg/ev/ev148_һ���ȣ�_b.jpg");
	FadeDelete("�}�ţ֣���", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
������ȫ��ĹĶ�����Ůս�����ѡ�
��������ʱ���緢��֢״�����ȡ�

��һ�ж������������б�ǿ������ķ�Ӧ��

�������ﵽ�߳��˰ɡ�
��
�����������׵������������е�������

���������������о����۷塪������һ��������֪�ɡ�
������������޿��ǵز�Ū����֮ʱ����������ĸ߳�
һ�����˿̵�һ��Ҳ����ˡ�

��������֪�����Ƕ�ô����һ���¡�
��
�������ļ�����ʾ����Ů�Ļ��ң�ӡ֤������ȷ����⡣

��������ϲ�ã��������趯��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nwһ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0080120a02">
���š�����!?��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
���Ӷ����ȴ��Ȼ������ֹ��
���������������˷ܸ���һ����Ϊ������ԴȪ��

������Ȼû�зſ�һ����˫����
�������Ѿ�û�пɶ�֮���������ˡ�

���ٴν���ͷ������Ů�Ŀ��С�
������˫�����������ſ��������졣

��������һ��С����
��һ������ͷ�Ѿ���������Ȼ�����ţ�ȴ��Ȼ��������
�Ŀ�������׾�ػ�Ӧ�š�

���ܺá�
��������һ������ͷ��������ͨ��������ͷ�����ڽ���
���ľٶ��������������ľٶ���

���Ӷ��Ѿ������ˡ�
�����ԣ��ֵ���<RUBY text="����">����</RUBY>�ˡ�

���ҽ����л������Һע��һ�����С�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nwһ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0080130a02">
������!?��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�����׻�����������Ŀ��ܸ�ռ���ȷ�ɡ�
��СС�����ද������ͼ��ֹҺ������롣

�������������������־ٶ���

���������ֽ���ץסһ�����ϱۡ�
�������ս���������֮�󼸺�������ֹѪҺ��������

������������Ҳ�������������־��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nwһ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0080140a02">
����������


//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0080150a02">
���š����š�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��һ���ķ�Ӧ�����Ǻ�ͯ��������ĸ�ĸһ����
����������ͼ��ʱ������ɢ����Ϊ���׵ķ��ӡ�

����Ů�����ˡ�
�����������ڴ��׵�����ע�����Һ��

��˳�ӵ����¡������ڷ�������������
���۽��������顣����Ҫǿ��Ŭ����������ˮ�ĵ��䣬
�����˱������ȫ����

��һ�������ڱ����³´�л��������Ⱦ��
��
����Ϊ�ն����������ˣ�����ӵĲ��ֵõ����㣬��
��ȸԾ֮����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnBG(100,"bg033_���Lլ����˽��_03a.jpg");
	FadeBG(0,true);

	FadeDelete("�}�ţ֣���", 500, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0155]
�������ɿ����촽��
����Һ���������������˿������һ���š����������
���¸ɾ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nwһ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0080160a02">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
��һ����ڴ�ڵش�������
�������������绹����һ��δ֪���������塣

������һλδ�����µ���Ů��Ҳ��һ�ж�̫���̼���
�����ǡ������ǣ�������������

�������Ҫ<RUBY text="��������">��������</RUBY>��
����ô����������ͣ�£���ʲô��Ц��

��һ��Ҳһ������ô��ġ�
���·���δ���¾ͱ�����ֹͣ����һ����������ϣ���ġ�

����˵��ϣ�����Ӷ�������˵����Ҫ���Һ�Ϊһ�塣
���������ڽ���<RUBY text="��������">˫�����</RUBY>���ѡ�

����ƾ��Щ��ȫ�޷��޷����㡣
��������ࡣ��������ȸ���嫸�ǿ�Ҹ��̼���

����һ�����Ӷᡣ
����һ���Ľ��ϡ�

�������Ǽ����ɡ�
��������һ����

����Ů�����߻�ɢ���޷����У���������ע���£���˫
�������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ȣ�������λ
	CreateTextureEX("�}�ţ֣���", 4000, Center, Middle, "cg/ev/ev149_һ���ȣ�_a.jpg");
	Fade("�}�ţ֣���", 1000, 1000, null, true);

	Wait(500);
	Delete("�}�ţ֣�*");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����Ů�������Ѿ��㹻���ȣ�����û�б�Ҫ��ʲô����
�����ɵ�׼���ˡ�
�������Ǵ��������ļ������������ͷ��

����������Ϊ�µ�������󷴶����������Եļ�Ԧ��
��ֻ�����Լ��������ܿ��Ƶķ�Χ�ڻ���ʱ��ú����
���ѡ���ô���ܻ�Ϊ�Է����ǡ�

��һ��ӡ�����Ĳ�������˱�ź�ˮ��
��˳������Ƥ������˱���⡪�����³�ª�ĺۼ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nwһ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0080170a02">
���š�������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
�����ܵ�һ��СС���Ӷᣬ��Ů���η��ε������š�
����Ҳ�������������Լ������������Ĵ�����ֻ��һ
ζ�ؽ��ܡ�ֻ��һ��Ů�ˡ�ֻ��һ�����͡�

�������ַ�Ӧ���˰ѳֲ�ס�����᲻������
��������ѩ�׵ļ��������ߡ����ϲ��������ز�¡��

�����ĸ������ϣ�������Ū��
������ָ�Ǹ��Ϸ�ɫ��ͻ��

����Ů�ƺ��������ͣ�Ť�������塣
�������������ҡ���ֻ��������Ϊ��

�����м�����
������Ԥ������ʼ���̵����������ҽ�Ӳ��С��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nwһ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0080180a02">
��ѽ������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
��һ���������С������Ȼ��
��һ�������廹û��<RUBY text="����">���</RUBY>��
����Ӧ���ⷬ������

��������֪�����ʷ���
�����ǿ�������ݱ�ʹ������ô���ġ�

�����Բż�����
����ͷ��β�شֱ���������Ů���鷿��

������Ħ��ֽ�Ű���������ϴ�һ���������ݳ���
������ʹ�ࡣ

��Ȼ����ȴ�������ӱܡ�
������Ҳ˿��û�з����ӱܵ���˼��Ҳ����������Ϊ��
����һ��ŷ����ӱܡ�

���ܺá�
�����е���Ű�������������޵ֿ�����Ůʱ�����ӵ�
�˼��¡�

��Ҳ����˵�������ö����ҵ����ȡ�
�����ǵģ�����δ�����£�ȴ��ͷ������Сĸ�ޡ�

���촽������һ���¡��
����˱��

��������������ĺۼ���
������һ�����������ؿ����ҡ�

��˲ʱѪ�����š�
��
������ҧ�ϡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nwһ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0080190a02">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
���䲻����ҧ�ϡ�
����ӡ���˳ݺۡ�

��������߹���һ��ԲȦ����ɫ��ԲȦ��
����Ů��ã�������š�

���·�������ϼӸǵ���ӡ��
������ͬ���������ȴ������Щ��

�����һб��
���˿̣�<RUBY text="������">������</RUBY>��ʲô���ı����ء�һ����
�Ƿ������ɡ�û�о�������̫��ϧ�ˡ�

��ͦ�����塣
������ץס��Ů������˫��ʹ���ſ���

��������������ģ��������ǵ���б�����ˡ�
��ֱ���沿��Ӳ��

������һƬ��ʪ��
�������������������ֶԴ���

�������������������Ů��
�������������������Ů���Լ���

������Ŀ�д����޿ɾ�ҩ���泩���飬���綾ҩһ��
���Լ���Ҳ�޷��ָ�ԭ״��
�������һ�У�ֻ�г��١�

�����Լ������������Ů��
���Լ���ª���������������ͣ�������Щʹ��

��һ�������ҡ�
���ƺ�����ѯ�ʣ��������ڴ���ʲô��

���һ�������
�������ڿ���ʲô��

��һ�����������类��ɱ֮ǰ�ĳ��������ҵ����Ｔ��
�����ֻƵ�ٽ����ĳ�����
���ѳɶ��֡�

����ֻ��������˳���ؽ�ɱ����Ϊһ�����͡�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����֡�����
	CreateTextureSP("�}�ţ֣���", 3990, Center, Middle, "cg/ev/ev149_һ���ȣ�_b.jpg");
	FadeDelete("�}�ţ֣���", 500, true);
	Wait(500);
	SetNwR("cg/fw/nwһ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0080200a02">
����������


//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0080210a02">
��ѽ��������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
���������ϣ���Ů��˽���������͡�

�����ܶ�ô��ʪ��Ҳ�޷��ʹ˽���һ�����ˡ�
����Ҫ˳���Ľ��ϻ����Խ�Ӳ����խ��

����ʹ����ֻ����һ����Ҳͬʱ�����ҡ�
��Ƥ����Ħ������չ����������һ���ǿ�Ҵ̼���

���������Ҳ��ͦ��ή��
��������Ȼ������

���������߶�ʮһ���������롣
��������Ϊ�����ǰ��϶�׶��

���ƿ���Ӳ����ڣ����ţ�ǿ�п�����
�����һ�����Լ�ͨ�еĵ�·��

���ⳡ������������һ�㱡Ĥ���ܵ���ܡ�
��ƾ�赯��ӭ������ڡ�

���䱻�ƻأ���Ҳֻ��һ˲����ˡ�
���ٴ����롣����ǿӲ��

�����ѡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����֡��ƹ�
	CreateTextureSP("�}�ţ֣���", 3980, Center, Middle, "cg/ev/ev149_һ���ȣ�_c.jpg");
	FadeDelete("�}�ţ֣���", 500, true);
	Wait(500);
	SetNwR("cg/fw/nwһ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0080220a02">
��ѽ��������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
����Ů�ļ�����
���������̾����ʺ�֮�У��ݳ���ֻ��Щ����ɢƬ�Ρ�

����ŮĤ�����ƻ�����Ů�Ѿ�û�п��Եֿ�������Ϯ��
������
��ֻ��������������һƬʥ�ء�

����Ȼ���һ���ô����
����ô�������֡�

���ᴩ��ľ�ͷ��
���Ҿ��Լ����ܡ���ͼ�����Լ���ȫ����

�����������̵�����������Ů��������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nwһ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0080230a02">
����������������


//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0080240a02">
�������ն�����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
��һ������ͫ��ʪ��
��Ҳ���Ⲣ�ǽ�����ζ�ſ�ʹ��

����û��ȥ�Ʋ��������⡣
��ֻ������<RUBY text="������������">���е������</RUBY>���ѡ�

��������������ݡ�
����������쳱������������

���·𱻲�ʳ���������ڵ�ȫ�����塣
��������ô����������

������Ϊ��������������������Żᷢ��
�����಻�������ּ����鷳�Ķ������ܵ��ˡ�

�������Ұ�ޱ�ɡ�
����Ʒ������Ϊ���ܵ�Ұ�ޱ�ɡ���˱�ɡ�

�����ϲ�λ�ĸо���������
��һ�ȼӴ�����Ѷȵ���Ů˽���Ľ��¸У����ֻ�Ǵ�
�����õ��´���

��������Ϊ�ⷬ��̶�ʹ�ø���������������
�����޼�϶�İ��������Ŀ�����Եֿ���

����������ʱ��������Ҳ�����������侫��
�����ǣ��Ҳ����������<RUBY text="����">��и</RUBY>�Ľ�֡�

���ҿ�ʼ�鶯����ķ���
�������Ѿ���ֲ��˶�á�

�������޵�ʱ���ھ��������ܸ�������á�
����ɢ�����ң����ҵس鶯��

���϶������ı�������Ů����к����
�����۰ɡ��ƹ�֮Ѫ��δ�ɣ�����������

�����ܲ��ˡ�
���������ܡ�

�������̰����Ʒ����
��������Ϊ�����¡�

�����¸�������������߰���
��һ�е����ƶ�����Ȼ��

�����Լ���ǰ��������Ů˽���ľ�ͷ��
�����������ͷš�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����֡��侫���г�����
	CreateColorSP("�}�ɥԥ�ԥ�", 5000, "#FFFFFF");

	Fade("�}�ɥԥ�ԥ�", 300, 0, null, true);

	Wait(300);

	Fade("�}�ɥԥ�ԥ�", 0, 1000, null, true);
	CreateTextureSP("�}�ţ֣���", 3980, Center, Middle, "cg/ev/ev149_һ���ȣ�_d.jpg");
	Delete("�}�ţ֣���");
	FadeDelete("�}�ɥԥ�ԥ�", 1500, true);

	Wait(500);

	SetNwR("cg/fw/nwһ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0080250a02">
����������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
���ͷų����������ͷŵ�һ�С�
�����ں���һ������

�����¯��ȼ�յ���ʶ���ڵõ���Щ���򾲡�
�����ƶ����ߣ��۲�������

�������������̤��ģ����
����Ϊ�Ҿ�����ô���ģ�Ҳ�ѹ�����⾰��

����һ���о��������ڴ˿���ʲô����������͸��
��������˫�ۡ������������������������п���һ�

����������
�������л�����ʲô�ġ�

���Ǿ��Ǳ�����������֪��
�������Լ������˱�������Ϯ��

��ĳ�־�������С�
��ĳ�ֱ��ҵĽ�֡�

���Լ��Լ�������Щ�ķ�Ӧ��
��һ��������ת���ҡ�

������<RUBY text="��������">�ȴ�����</RUBY>������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="����" src="voice/mb03/0080260a00">
���ǡ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
�����������ط����˹�����
����������Ц��

����Ȼ��ˡ�
����Ȼ��������

�������������Ů����һ����

��Ц������ǿ�ҡ�
������Դ�����衣ֻ�Ǹ��˶��ѡ�

����Ů��Ʒ������������������֮�µ�<RUBY text="����">��ζ</RUBY>��
�����������Լ��������������˵Ĵ�����

����Ů����֪����Ϊ��С�
��һ���������㡣һ���������и��������

��һ����˫������˵������������
��Ŀ��������ȴҲ��次����ҡ�

�����Ҿ��������ɡ�
����������֮��ɡ�

���һ�ԶԶû�����㡣
�������������˻���̰�����Ӷ�˴˰ɡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ȣ����ᱳ��һ�����@���Ĥ��Ф餻�������
	CreateTextureEX("�}�ţ֣���", 4000, Center, Middle, "cg/ev/ev150_һ���ȣ�_a.jpg");
	Fade("�}�ţ֣���", 1000, 1000, null, true);
	Delete("�}�ţ֣�*");

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
������һ�������壬����ת�����
��ſ�ڱ����ϣ��ڳ��β���������ƣ���ģ�����Ǳ���
һ����ζ��

������֮��ӹɼ䴹�ζ��¡�
�����м�����һ˿Ѫ�죬������Ű�����֤��

������Ϊ�߳���������Ů����ֱۡ�
����ͼ�����Ƿ���ҡ�

�����ǿ���֮�١�
����ץס�������󣬽��䷴�ۡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nwһ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0080270a02">
�����ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
���������׵ؾͱ�����ס������ʧȥ���еֿ��ֶΣ�һ
���ѹ��ؿ����š�
���޿��κεؽ��������ߵ����衣

���������������İ�����Ѫ���ϵ�Һ���п�ʼ������
������Һ�塣

����Ůһ�߳������ѣ�һ���������Ρ�
�����ȵ�����

����������΢����������ߡ�
���һ���λ�Ӧ���������أ�����Ȼ֪���𰸡�

����ʤ��ϲ��
�������������ڴ��ɡ����賬Խ���ڴ��Ļر���

���Ҷ�������СС��Ѩ�ڡ�
�����޷�����һչ���ŵ���й�����١�

������˱��һ��ʳָ��
��Ȼ����롣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nwһ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0080280a02">
��ѽ!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
����û�뵽�ɡ�
���������Ľ�����һ�����������ӡ�

����֪�ǲ�����Ҫ���룬���䶯����֫��
����Ȼ�����ǲ�����˷ſ����ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nwһ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0080290a02">
����Ҫ����
�����ֵط���������


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0080300a00">
�����졣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
���ÿ��е��ִӺ�ץס��Ů���Դ�����������������
��ͷ֮�С�
����Ҳ����ʹ���޷�������������������һ�ߡ�

�����󣬸��������˲����Ѩ����ָ��
��ֱ����ָ�������룬�����ڲ���

������̽Ѱһ���ѱ�ÿ�����䡣
��Ȼ���ҵ�Ŀ��ֻ��������λ��Ů��

��һ�������ţ���ˮմʪ����ͷ��
�����Ǽ��ȵĳ��衣�Ҿ������衣

��������ˣ�����ȴ�쳣���̡�
����Ӳ�Ĵ�Ů֮�����ݱ�ɳ����ƻ�����塣

�����������޷��԰Ρ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}�ţ֣���", 3990, Center, Middle, "cg/ev/ev150_һ���ȣ�_b.jpg");
	FadeDelete("�}�ţ֣���", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0415]
�����������˶�һ������ĥ֮���ҳ����ָ��
�������׼��Ѩ�·��Ĳ�λ���ٴβ����֮ͦ�

�����ǵڶ��غϵĽ��ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nwһ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0080310a02">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
��һ���ı���һ�������

�����һ�εĴ��ྶͥ��
������������ȣ�������ȣ�������¡�

���̶̵�ʱ���ڣ�������һ�������塣
����Ϊ���������衣
����Ϊ�ܵ��˱�Ű��

����������Ӧ���ҵı��С�
�����ĵش�����ӭ���ҡ�

�����ӵ���Ϊ�뱰�ӵķ�Ӧ��
����������֮�ϡ�

������������Ů��̥�ڡ�
��ÿһ�ε�ײ��������Ծ��

����һ�Σ����������ҡ�
��������ᵽ��Ů�ĸо�Ҳ�����Ž����������۷塣

����ͷ��β�Ĵֲڡ�
����ٰ����Ķ�����

������֮��׷���Ÿо���������
������Ů���������Ķ��塣

���������Ľ��ϸ���̸���Ͼ��£�ȴ��Э���ϴﵽ����
���ľ��硣
��ͬʱ�ﵽ���塣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����֡��_����һ��
	CreateColorSP("�}�ɥԥ�ԥ�", 5000, "#FFFFFF");
	Fade("�}�ɥԥ�ԥ�", 300, 0, null, true);
	Wait(300);

	Fade("�}�ɥԥ�ԥ�", 0, 1000, null, true);
	CreateTextureSP("�}�ţ֣���", 3980, Center, Middle, "cg/ev/ev150_һ���ȣ�_c.jpg");
	Delete("�}�ţ֣���");
	FadeDelete("�}�ɥԥ�ԥ�", 1500, true);

	Wait(500);

	SetNwC("cg/fw/nwһ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0080320a02">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ�\", 5000, "#000000");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
���ﵽ��һ��δ֪�ľ��أ�һ���������ҡ�
��ͬʱ�����ڽ��������ٶȵ��侫��

�������������þò�����
���滺�ź��������������á�

������������

����������
������Ҫ���ࡣ

����֪�����Ұ���ڷͽС�
���ɼ��¡��û��ή�ҵ�һ�̣��˷ܶȲ���������

��������ࡣ
�����ࡣ

���ޱ��޼ʵ�����һ�����������ҵ����ϡ�
���������ܻ���������й©������

��һ����㱵ؿ����������ҡ�
����ͫ����ʧȥ�ȶȡ�

���������κξܾ��ҵļ���
������������Ȼ�����Ÿ��ӳ���������δ����

����ֹ֪ͣΪ���
����Ϊ�����Ͳ����ڡ�

��һ������ת���ҡ�
����˱�Ű뿪��ϵ��촽��

  ̽����ͷ�������Ŀ��з������¡�
��һ��սս��������չ���࣬��ס�������ߡ�

��ѪҺ�ڷ��ڡ�
������ʧȥ��˼���Ĺ��ܡ�

{	Fade("�}ɫ�\", 3000, 1000, null, false);}
���ҿ�ʼ�˵����غϵ����֡�
��
�������������ھ������߻ָ�����ʱ���������ֽ�����
�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
	ClearWaitAll(2000, 1000);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg033_���Lլ����˽��_03b.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	Wait(1000);

	SetFwC("cg/fw/fwһ��_�դ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//������
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0080330a02">
����������ĺܺ����ء���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0080340a00">
��������Ǹ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
�������Ҵն���������ë���ˡ�
����ҩ��ҽ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//============================================
//��ꥳ�쥯������á���������������
	if($PLACE_reco){
		RecoReturn();
	}else{
		ClearWaitAll(2000, 2000);
	}
//============================================

}

..//������ָ��
//�Υե����롡"mb03_009.nss"