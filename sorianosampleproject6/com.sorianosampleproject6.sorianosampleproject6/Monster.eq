
/*
 * Monster
 * Created by Eqela Studio 2.0b7.4
 */

public class Monster :SEEntity
{
	SESprite monster;
	int w;
	int h;
	int m_x;
	int m_y;
	int p_x;
	int p_y;
	
	public void initialize(SEResourceCache rsc)
	{
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
		p_x = MainScene.x;
		p_y = MainScene.y;

		
		//add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));

		rsc.prepare_image("mypurplemonster","Purple-Monster", 0.1*w);
		monster = add_sprite_for_image(SEImage.for_resource("mypurplemonster"));
		//m_x = monster.get_x();
		//m_y = monster.get_y();
		monster.move(Math.random(0,w),Math.random(0,h));
		
	}

	public void tick(TimeVal now, double delta)
	{
		p_x = MainScene.x;
		p_y = MainScene.y;
		m_x = monster.get_x();
		m_y = monster.get_y();
		base.tick(now, delta);
		monster.move(m_x+(p_x-m_x)/Math.random(50,500),m_y+(p_y-m_y)/Math.random(50,500));
		
	}
	
	public void cleanup()
	{
		base.cleanup();
		
	}
}
