/**
 *  <pool >
 a problem that has life guard, parents, and children.
 Project 1: Synchronization Due (10/06)
 1.
 Public Pool
 The local YMCA has set up a water obstacle course in their
 Olympic sized pool.
 •
 There are
 K
 stations of the obstacle course but only
 L
 life-guards (where
 L < K
 ).
 •
 Children are not permitted into a station until a life-
 guard is also assigned to that station.
 •
 A life-guard can not leave a station while there are chil-
 dren still in it.
 •
 Only
 N
 children  are  allowed  into  the  obstacle  course
 at  any  time  (across  all  stations).   Per-Station  only  1-
 Child is allowed on the obstacle at a time, the other’s
 must form a line (but are still considered to be at that
 station).
 •
 There are infinitely many children.
 •
 When children are done they need to wait for a parent
 to pick them up.  Parents are waiting in the sauna.
 •
 Life guards, when un-needed fall asleep in the sun.  No-
 tice that Life Guards should go to the stations where
 they are needed.
 Implement this scenario in JNachos using the JNachos Semaphore
 class.   Your  solution  should  work  for  any
 K, L, N >
 0  with
 L < K
 .
 */
package jnachos.kern.sync;

import java.io.*;
import jnachos.kern.*;

/**
 *
 */
public class syncPool {

  //first there are 4 semaphores: life guard/ children / paretns/ station
  static Semaphore LG = new Semaphore("SemLifeGuard", 0);
	static Semaphore Ch = new Semaphore("SemChildren", 0);
	static Semaphore Ks = new Semaphore("SemStation", 0);
	static Semaphore Ps = new Semaphore("SemParent ");

  //
	static Semaphore wait  = new Semaphore("wait", 0);

	static Semaphore mutex = new Semaphore("MUTEX", 1);


	static long count = 0;// # of LifeGuards on Duty
	static long countkidinLine = 0;
	static long countkidinStation = 0;
	static long countkidinOb = 0;
	static long countkidwaitParent = 0;
	static long parents= 0;

	static int LGcount,N, Chcount, Kscount, nLG, nCh, nKs;

	class LGperson implements VoidFunctionPtr {
		int mID;
		public LGperson(int id)
		{	mID = id;	}

		public void call(Object pDummy) {
			mutex.P();
			if(countkidinLine == 0)
			{
				LG.P();//sleep
			}
			else if(count<LGcount)
			{
				count++;
				mutex.V();
				//Ks.V(); //Waits until a station
			} else
			{	LG.P();	} // Waits for LifeGuard to become available

			wait.P();

			System.out.println("LifeGuard #" + mID + " sent out to station.");
		}

	} // END OF CLASS LGPERSON


	class CHperson implements VoidFunctionPtr {
		int mID;

		public CHperson(int id)
		{	mID = id;	}

		public void call(Object pDummy) {
			// NEEDS TO BE IMPLEMMENTED FOR CHILDREN
			mutex.P();
			if(true)//need to implement for if life guard on duty
			{
				countkidinLine--;
				countkidinStation++;


				Ch.V();

				mutex.V();
			}
			else//if life guard not on duty
			{
				countkidinLine++;
				Ch.P();
			} //no life guard , wait

			wait.P();


			System.out.println("Child #" + mID + " sent into station.");
		}

	} // END OF CLASS CHPERSON

	class KsStation implements VoidFunctionPtr {
		int mID;

		public KsStation(int id)
		{	mID = id;	}

		public void call(Object pDummy) {
			mutex.P();
			if(countkidinOb < N)//
			{
				countkidinOb++;
				childplays();//do the obsticle
				countkidinOb--;
				countkidwaitParent++;
				Ks.V();
				mutex.V();
			}
			else
			{ Ks.P(); }// too many kids in obsticle, wait
			wait.P();

			System.out.println("Child"+ mID +"sent to obs");
		}
	}




			// NEEDS TO BE IMPLEMMENTED FOR STATIONS
			System.out.println("Station#" + mID + " contains: ");
		}

	} // END OF CLASS KSTATION


	class sauna implements VoidFunctionPtr {
		int mID;

		public sauna(int id)
		{	mID = id;	}

		public void call(Object pDummy) {
			mutex.P();
			if(countkidwaitParent == 0)//
			{
				parents.P();
			}



			else
			{
				countkidwaitParent--;
				parents.V();
				mutex.V();
			}
			wait.P();

			System.out.println("Child"+ mID +"has been picked");
		}
	}



		}

	} // END OF CLASS parent


	//********************************
	public syncPool()
	{ runsyncPool(); }

	public static void childplays() {
		System.out.println("** playing in the obestcle **");
	}


	public void runsyncPool() {
		try {
			BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
			System.out.println("How many Stations?");
			do {
				nKs = (new Integer(reader.readLine())).intValue();
			} while (nKs < 1);
			System.out.println("How many LifeGuards?");
			do {
				nLG = (new Integer(reader.readLine())).intValue();
			} while (nLG < 1);
			System.out.println("How many Children?");
			do {
				nCh = (new Integer(reader.readLine())).intValue();
			} while (nCh < 1);
		} catch (Exception e)
		{ e.printStackTrace(); }

		Kscount = nKs;
		LGcount = nLG;
		Chcount = nCh;

		for (int i = 0; i < nLG; i++) {
			LGperson obstacle = new LGperson(i);
			(new NachosProcess(new String("LgPerson" + i))).fork(obstacle,null);
		}

		for (int i = 0; i < nCh; i++) {
			CHperson obstacle = new CHperson(i);
			(new NachosProcess(new String("ChPerson" + i))).fork(obstacle,null);
		}

		for (int i = 0; i < nKs; i++) {
			KsStation obstacle = new KsStation(i);
			(new NachosProcess(new String("KsStation" + i))).fork(obstacle, null);
		}

	}  //END OF RUNsyncPool()


}
