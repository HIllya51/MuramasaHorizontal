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

scene md03_001.nss_MAIN
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
	#���٥�ȥե�������=true;
	#ev501_�������=true;
	#bg073_��a_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md03_002.nss";

}

scene md03_001.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md02_047.nss"



//�����������龰����Ԫ�ˑ���ޤǡ��ƥ����ȥܥå���
//����ɫ�������룿

	PrintBG("�ϱ���", 30000);

	CreateColorSP("�\", 5000, "BLACK");
//�����ߣ�ϣ������ݩ`�Ȼ���Ȥ��ʤ������������ݳ������������Ȥꤢ��������
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/ev/ev501_�������.jpg");

	Delete("�ϱ���");


//���Υ٥��ʾ

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��
��
��
��
��
�����������������������������ۡ�

</PRE>
	SetTextEXAH();
	TypeBeginAHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	SoundPlay("@mbgm02", 0, 1000, true);
	SoundPlay("@mbgm33", 0, 1000, true);
	Fade("�\", 3000, 0, null, true);
	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0015]
��������ν������˸�������֮Ѫ��������������
�ɵ����ף��߱������������˫�������ԡ�����˵����
��ӵ�����������Ƶ��ǻۣ��ܵ����˻��������������
�������лҲ���ǲ����ܡ�
���ң��������ǻ����ʵ�Ľ���������ʹ��ʱ�����ϲ�
������������ֻҪ���滷�����ˣ��಻�������򸯰ܡ�
�����������Բ��ض��ԣ����лḳ�贩������սʿħ��
֮��������ǽ��С�

����������֮�ڽ��У������Ǻ���δ֪���ʵ��¶��ߵ�
����֮�����ҵ��ֽ��ѧ����֪�����޷��󼰣��亽
������������Զ������ʵ֮�����������ҵ��龫���ǵ�
�����Ƿ����ܿ���������������һ���ܹ��϶�������
�ڰ��������ѧ���У���Щӵ��ͻ���ͽ�����֪ʶ��
������Ҳ����ҵ�ͬ��һͷ��ˮ������ǣ������ĳ��
����Ƨ�������������д�ģ������������о������Ʒ�
�����Ľ��������µ��¿�ѧ��־�������ǳ����������
���ҵȻ��ڵ��µ���֪������������ֻ��һ���¡��Ǿ�
�Ǽ���������һ�����ǻ���Ŀ�꣬������ϸ�������
忡�

{	Fade("�\", 2000, 1000, null, false);}
��
��
��
��
��
��

</PRE>
	SetTextEXAH();
	TypeBeginAHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�\", 1000, 1000, null, true);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg073_��a_01.jpg");
	Fade("�\", 1000, 0, null, true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���ҵ������������̽�����壬Ѱ��⿪����֮�յĹ�
��Ҫ�ء����ǣ��Ƿ���������һ����Ҫ�Ĺ���Ҫ���ء�
���ż�ɽ��˵�ɣ��ҵȶ����콣�еĵ������ʡ���ˮ��
�Ƿ����˳�ֵ��о��أ�

��������֪���ڽ��е����������ж���ʦ����Ϊ���ӡ�
��������Ϊ��ʥ�ġ�����ʽ����������ɴ�������ֵġ�
ʹ���������ױ仯Ϊ����ѧ�������һ˲�䣬�Ǳ��Ǵ�
�����ҵ�����Ƕ���ʦЯͬ�����´��������Ͷˮ�Ĺ�
�̡������ʵ�����ɢ���󣬶���ʦ�Ѳ������ڣ�ֻ����
����ǰ�ֺ���������ס�����ʱ��������Ȼ��������
�ף����ǻ�Ϊ������η��Ľ��С�֮�󲻹���Щϸ΢��
������ҵ��

�������ҵȶ����˹�����ˮ�Ľ�ɫ�������϶�Ϊ��ý��
�����Ƕ���ʦ�����ף�ˮ�������������ߵ�����������
������ʵ��������أ������Ƕ���ʦ�������ײ����Ǵ�
ý����ˮ��������֮һ�أ�
�����������һ�뷨�����������⡣�����һ��������
ֻ�Ὣ�ҿ����������εĴ����߰ɡ��ܲ��ɣ��ҶԳ�Ϊ
���μҺ��ڽ̼Ҷ�����������ѹ��ס�˷ܵ�����������
���ҴӶ���һ����۾ݼ���˵����ʼ�ɡ�

��
��
��
��
��
��

</PRE>
	SetTextEXAH();
	TypeBeginAHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�\", 1000, 1000, null, true);
	CreateTextureSP("�汳��100", 100, Center, Middle, "cg/bg/bg073_��a_01.jpg");
	Fade("�\", 1000, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��ͼ���Ǵ�������ŷ��½�������£��������ڹŴ�����
����˶���ʹ̫ƽ���һ���ֱ��������¶��γɵĹ��
����ˮ�⼰���֧�������ͼ�ϵķֲ������������
��ĵ���ѧ��ʹ��ͨ����˹���Ѷ����ڶ��õ���������
��ɵķֲ�ͼ����Ȼ�������޶��޷�����������
���ݵİ˳�����Ӧ��ֵ�������ġ�

����ע���ݺ�˹���Ѷ��������ƣ�����ˮ�ķֲ���Ȼ��
����ȷ�������ݵ���ѧ��ʶ����Է�����಻�ò���̾
�䲻��˼��ĵط��������˼��ĳЩ�쳣��������˵��
���������޷��������˵����

��ͼ�����Բ�ͬ��ɫ���ָ������е���ʱ��������
ͼ��ͼ�����Բ�ͬ��ɫ���ֽ��е��������������ͼ��

����֪��λ�Ƿ�����ͬ���������ء�û�����������ˮ
��Խ�������е���ʱ��Խ�硣������������Ȼ������ȫ
����ˣ���ȫ�޵���ˮ���֧������ȫ�޽��г�������
һ����Բ��ܺ��ӡ�

����λ��������Ϊ�Ⲣ��˵��ʲô����Ȼ���콣����Ҫ
ˮ��ˮ���ֲ��뽣�е��������һ���Ⲣ���κι���֮
����������λ��Ӧ֪���������ϵ�ˮ�����ǳ���ͬһԴ
ͷ��
������˵�����ڶ��콣�е�ˮ������Դ�½�����ĵ���
ˮ�⡣�����ɴ�ˮ����й����ĵ��򣬼��ϱ����ޡ���
�ޡ����޵ȵ���ӹ����񶼲�����������У���ע����
�ڹ�ȥ�Ƿ���������������飩��

����Ե�������ͱ���Ϊ�����ʻ������ֵĲ�ͬ����û��
����Ϊ����ˮ��ء�ˮ�Զ��콣����˵�����ش���һ
�������֪��ȴ��δ����������֮�ء��Ⲣ����֡���
Ϊ�ܹ��������ƽ��е�ˮ��������ˮ֮�䣬�ҵȲ�δ��
����ɷ������κβ��졣Ȼ�������ҵ��ֽ�ֻ�ܽ�����
����Ϊ���������Ŀ�ѧˮƽ����Ȼ����һ���Ϸ�������
δ����������֮�У�

����ˣ�������˼�˵��������֮�յĹؼ�������ŷ��
½�����ĵ���ˮ�⡣

��
��
��
��
��
��

</PRE>
	SetTextEXAH();
	TypeBeginAHI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������Ϊ�ǽ����������һ�֣��������֣���ԭ�����ڣ�
���Ǿ���һ���޶ȵĶ����ǻ����ж������Լ����ܹ���
�մ����ߵ�����������������һ���Կ������³´�л��
���ʡ���Ȼ������֮���ض��ܶࡣ�����ǻ�Ҳ���ж���
Ҳ�գ����������Դ�����Ϊ����ĸ�����Ϊ�������ʸ�
Ϊ�ӽ�����ͬ�ڻ�е�����ơ��Ҳ���������������
Ϊ���е�ȷ���л�е�ԡ����ǣ����Ǳ������ŵ�������
�ó��Ľ��ۡ���
�����о��Բ��������Ϊ���ǲ��������己ֳ������
��һ�۵㱻��ȫ�Ʒ��Ļ����������أ�

�����в��ֳᷱ��������ʵ��������Ŀ��Ծʹ˶϶���
�ǲ����������ǲ���������ĳ�������ԣ�������˵��
���������Ǿ��ɷ�ֳ���������Ȼ���̳еò�����ȫ��
��˲��߱���ֳ������һ�����ԡ�������ʨ���ӽ���
�µı�ʨһ��������һ�������½�����һ��ֳ��Ϊ����
Ȼ���Ƕ���ʦ�Ķ����ˡ�

����������������Ϊ����������֮�֣������ﶨ��֮һ
�����己ֳ��ͬ���������Ҳ�����������⡣�����ж�
��Ϊ����ֻ��Ϊ�˱���˵���۵㣬���Ǳ��ĵĺ������ݣ�

���ڴˣ����λ����ǰ�ε����ݡ�������������ﷱֳ
�����ĺ�����Ǿ�����ʲô�ĺ���أ�
�������������������������
�����ࣿ��������������������Բ������ֳ������
�����ǡ�������û������ˮ��ȷ�е�˵��ˮ��������δ
֪��ĳ�����ʵķ�ֳ���ǽ��еĶ��졣

��ͨ�����ǵ�����Ǿ��׵ĵ���ˮ�⣬ĳ����������
�������ϡ��������ꡢ��ʮ�ꡢ�����꣬������;����
�������ɽ���߸����СϪ����������Ƕ���ʦ��
�����ء�����ʦ���տ�ʯ�������һ�����ס�ֻ���ڼ�
�ȵĸ����²��ܶ������мӹ������������˿��ſ�����
������ʦҪ�������������������ʴƤ�������ռ��⡣
�ȱ���ˣ�Ϊ����һ�̶����Ķ���ʦ���Բ������Լ���
��������׵ļ�ǿ��־���;�ʹ������һ��׼����Ͷ��
��ʥ��Ȫˮ�С����ȵ���������ˮ��Ӵ�����������
�ķ�Ӧ��������Ӧ�ó����������ɡ�����ˮ���У���
����Ϫ���еġ�ĳ��������Լ�����ʦ��Ϊһ��Ĳ�
������е����ˡ�

������ƴ�Ϊ��ֳ�Ļ�����˵��һ�־������ơ����λ
����һ�¶����Ĳݣ���������ľ��������Ӽ����ڳ���
�ڣ��Գ���Ϊ�紲�����ɳ����ӳ浽������������仯��
���������׺Ͷ���ʦ������������������ĳ�ֹ�֮ͨ
����
�������Ĳݵ������������ӡ�ͨ�����Ӽ������������
�����˱��������еı�������ô�����콣��ʱ�൱����
�ӵĶ�����ʲô�������ض��ԡ������ǡ�ĳ���

������������ˮ�к��еġ�ĳ��������Ǵ����ڵ���
ˮ��ġ��������ͷŵġ����ӡ����ܶ���֮�������
�ҵ����ۡ�

��
��
��
��
��
��

</PRE>
	SetTextEXAH();
	TypeBeginAHI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���ھ����ˮ������Ĺ���֮һ������͵Ķ���ʦ֮�䣬
�Թž������Ŷԡ����񡹵�������������Ϊͨ������
���ж�������غ�ʱ�ڣ������ͨ����ٵ�ռ�������ԡ�
ռ����Ϊ��Ȥ����������ݾͷ��ڸ�¼�ɡ�

���ִ������ǡ�����֮�񡹣��ڴ���ڽ�ѧ����ָ����
���ǷǱ���֮��Ȼ�����Ƿ��������ء���ͬǰ����
˵���������ǽ��ж���ķ�Դ����ô������������
���������䷢ԴҲ��Ȼ�Ǵ�͡����Ϲ�ʱ���������뼼
���ǲ��ɷָ�ġ���Ϊ��������˵���ڽ���ʽ�Ǽ�����
�����һ���֡���ô��������֮�񡹾�����ζ��ʲô�أ�

���������������Է��������У���õ��˻���ħ����
��һո�µ�����������̨��һ�ɵİ������̽���ħ��
���϶�Ϊ����������Ժ����ɽ�������Ǵ������ϵ�
������䣬�ڷ�̴�����ǰ����Ϊ���ܵ�Ҫ��ʮ�ַ��١�
���ݼ�¼�����������ڰ���ɽ��������֮�ʣ���ԭ��
�Ľ�����������ɵġ�������Щ����жϣ�������Ϊ
�������̵�ԭ���д����н�����������ϵ���̬��

��������Ե������������ħ��������������ء�Ҳ
����˵����������˵��ħ�����ǣ���������ǰ�����շ�
Ҳ�ǣ�����ƺ�ϲ���þ޴�����֣��ӽ��Ƿ����ģ�ӵ
���ɡ�����֮�ʡ������ɵ����塣�����������㲻���
�����ꡪ��������Ǽٽ�����������������<RUBY text="�ģ�����">Ϻ��</RUBY>������
��������ɳ���졤ǧ�ֹ������������죬��ɳ��������
̫����⡢ǧ�ֹ����������������ģ�ħ������������
����������

���ӽ��Ƿ����ķ���֮�
����ǰһ�£���˵����̫��ʥ���е�������Ǿ޴����
ʯ�����ݶ���������Դͷ�ó��ĳɹ���֤����һ���졣
������ˣ��������µ��鱨���ǲ�ֻ����ͨ����ʯ��ħ
����Ĵ������Ա�����ĳ�������ԵĶ���Ҳ��֮������
���㲻�������Ž�����������������ⲻ���ǽ�����

������ڽ̹��»�����ʵ����ô�ںܾ���ǰ����������
��ĳ�������������򡣸����ǿ��ƽ��У�����������
�����Ե��ںϷ�����ɶ�ȴԶ���ڽ��еġ�����������
�塣�����ġ����Ƿ�ʵ�ʴ��ڣ������������˯����
��������Ĵ��֮���أ�

��
��
��
��
��
��

</PRE>
	SetTextEXAH();
	TypeBeginAHI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���һ���������̬��ʱ���Ʒ�������Σ�ʱ��������
��Ŀ�ʯ��������������һ�����ڵ���Զ�������ҵ���
�������޷����Ұ���סһ����ȷ�ĸ��������ȷ��
����ڵĻ���˼�������˷����ԣ����ܽӽ������ˡ�

��û��֤ʵ�����������׸��Ǵ�����ˮ�⣬ȷ�����Ƿ�
��Ĵ��ڣ�����ʵ��ʹ���Լ��������ʱ���������Ҳ�
���������ʹ�޷�ȷ֤�����������ܹ��õ���֤��

�����ŵȵ���ʷ������Ľ������˵�˲����������
��˵�����в���ֳ����Ϊ���ǲ���ȫ��������˵����ȫ
�Ľ���Ӧ��ӵ�з�ֳ�������̳��˳��ߵ��µ�������ʣ�
���á����ӡ����С��������Ӷ���ֳ��������ҵ�����
��ȷ�������ǽ�����ȫ�Ļ���

�������ڴ�δ���ᵮ����ȫ�Ľ��С���Ϊ���еļ�����
Ȼ�ڽ��i��ȴ�����ڽӽ���������Զ���˽��еı��ʡ�
���µ������е�ȷ�߱���ɫ�������ԡ����ǵ�������
����ȫ�����ɹŷ����������С������в����Ǳ�
�֡�

����ĵ��ӣ���߷�Ľ���ֻ���ڹ�ȥ���Ų�����á�
�ұ��뻷�����硣���ȱ�ô󺺵۹��ɡ���֪�������
���ܹ�һ�����������ǽ��еķ���أ�������ȥ������
��������ֵ���ͼ̹���ɵĻƽ��У��Ҹ�Ը�����䣡
Ȼ�󣬻����Ǽ����ĵ�����Ҳ����ȥ̽�á���

����Ϳ������ֹ�������ǣ�ֱ���ҵ���Ŀ�ĵأ�������
�����ٻ�Ϊֹ���Ҷ�����ͣ�½Ų�������̽���ߣ�����
����̽��������κ��£��ӽ������಻�ᡣ<k>
��
��
��
��
��
�����������ף�������������ӣ�������

</PRE>
	SetTextEXAH();
	TypeBeginAHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 1500);

}

..//������ָ��
//�Υե����롡"md03_002.nss"