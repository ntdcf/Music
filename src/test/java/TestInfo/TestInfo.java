package TestInfo;

import com.Music.Model.TestModel;
import org.junit.Test;

/**
 * Created by luohao on 2016/8/29.
 */

public class TestInfo {
    @Test
    public void TheTest() {
        TestModel testModel = new TestModel();
        testModel.create();
        testModel.find();
    }
}
