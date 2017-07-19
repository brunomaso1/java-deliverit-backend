package ucu.deliverit.backcore;

/**
 *
 * This class launches the web application in an embedded Jetty container.
 * This is the entry point to your application. The Java command that is used for
 * launching should fire this main method.
 *
 */
public class Main {

    /**
     * @param args
     */
    public static void main(String[] args) throws Exception {
        String port = System.getenv("PORT");
        GlassFishProperties gfProps = new GlassFishProperties();
        gfProps.setPort("http-listener", Integer.parseInt(port));
        GlassFish glassfish = GlassFishRuntime.bootstrap().newGlassFish(gfProps);
        glassfish.start();
        Deployer deployer = glassfish.getDeployer();
        File file = new File("YourSimpleMavenWebapplication.war");
        deployer.deploy(file);
    }
}