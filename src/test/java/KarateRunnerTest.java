import com.intuit.karate.KarateOptions;
        import com.intuit.karate.junit5.Karate;
        import com.intuit.karate.Results;
        import com.intuit.karate.Runner;
        import net.masterthought.cucumber.Configuration;
        import net.masterthought.cucumber.ReportBuilder;
        import org.apache.commons.io.FileUtils;
        import org.junit.jupiter.api.Test;

        import java.io.File;
        import java.util.ArrayList;
        import java.util.Collection;
        import java.util.List;


@KarateOptions(tags = "@ddt")
//@KarateOptions(tags = "@ddt,@soap")
//@KarateOptions(features = "classpath:featurefiles/karate01.feature")
//@KarateOptions(tags = "@rest", features = "classpath:featurefiles/karate-11.feature")
//@KarateOptions(features = "classpath:featurefiles/karate*")

class KarateRunnerTest {

    @Test
    public void testrunAll() {
        Results res = Runner.parallel(getClass(), 10);
        generateReport(res.getReportDir());
    }

    public static void generateReport(String resDir)
    {
        Collection<File> jsonFiles = FileUtils.listFiles(new File(resDir), new String[] {"json"}, true);
        List<String> jsonPaths = new ArrayList(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config = new Configuration(new File("target"), "karateTraining");
        ReportBuilder rb = new ReportBuilder(jsonPaths, config);
        rb.generateReports();
    }

}