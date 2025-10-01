import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("prod") {
            dimension = "flavor-type"
            applicationId = "com.neksoft.tradergpt"
            resValue(type = "string", name = "app_name", value = "TradersGPT")
        }
        create("dev") {
            dimension = "flavor-type"
            applicationId = "com.tradersGPTDev.app"
            resValue(type = "string", name = "app_name", value = "TradersGPT-dev")
        }
        create("stage") {
            dimension = "flavor-type"
            applicationId = "com.tradersGPTStage.app"
            resValue(type = "string", name = "app_name", value = "TradersGPT-stage")
        }
    }
}