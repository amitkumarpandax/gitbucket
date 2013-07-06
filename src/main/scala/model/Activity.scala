package model

import scala.slick.driver.H2Driver.simple._

object Activities extends Table[Activity]("ACTIVITY") with BasicTemplate with Functions {
  def activityId = column[Int]("ACTIVITY_ID", O AutoInc)
  def activityUserName = column[String]("ACTIVITY_USER_NAME")
  def activityType = column[String]("ACTIVITY_TYPE")
  def message = column[String]("MESSAGE")
  def additionalInfo = column[String]("ADDITIONAL_INFO")
  def activityDate = column[java.util.Date]("ACTIVITY_DATE")
  def * = activityId ~ userName ~ repositoryName ~ activityUserName ~ activityType ~ message ~ additionalInfo.? ~ activityDate <> (Activity, Activity.unapply _)
  def autoInc = userName ~ repositoryName ~ activityUserName ~ activityType ~ message ~ additionalInfo.? ~ activityDate returning activityId
}

case class Activity(
  activityId: Int,
  userName: String,
  repositoryName: String,
  activityUserName: String,
  activityType: String,
  message: String,
  additionalInfo: Option[String],
  activityDate: java.util.Date
)
