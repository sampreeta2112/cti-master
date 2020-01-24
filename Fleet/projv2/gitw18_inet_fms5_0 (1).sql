-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 05, 2020 at 05:18 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gitw18_inet_fms5.0`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
CREATE TABLE IF NOT EXISTS `attachments` (
  `att_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_id` int(11) NOT NULL,
  `att_filename` text NOT NULL,
  `page_no` int(11) NOT NULL,
  PRIMARY KEY (`att_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`att_id`, `file_id`, `att_filename`, `page_no`) VALUES
(1, 2, '../media/FILE00002__-4.jpg', -4),
(2, 2, '../media/FILE00002__1.jpg', 1),
(3, 2, '../media/FILE00002__1.jpg', 1),
(4, 2, '../media/FILE00002__1.jpg', 1),
(5, 2, '../media/FILE00002__1.jpg', 1),
(6, 2, '../media/FILE00002__1.jpg', 1),
(7, 2, '../media/FILE00002__1.jpg', 1),
(8, 2, '../media/FILE00002__1.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `can_backup`
--

DROP TABLE IF EXISTS `can_backup`;
CREATE TABLE IF NOT EXISTS `can_backup` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `imageid` varchar(255) NOT NULL,
  `canvasjson` longtext CHARACTER SET utf8mb4 NOT NULL,
  `extra` varchar(255) NOT NULL,
  `imageurl` longtext NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `can_backup`
--

INSERT INTO `can_backup` (`ID`, `imageid`, `canvasjson`, `extra`, `imageurl`) VALUES
(1, '1', '{\"version\":\"3.5.0\",\"objects\":[{\"type\":\"image\",\"version\":\"3.5.0\",\"originX\":\"left\",\"originY\":\"top\",\"left\":0,\"top\":0,\"width\":1200,\"height\":400,\"fill\":\"rgb(0,0,0)\",\"stroke\":null,\"strokeWidth\":0,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1,\"scaleY\":1,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"crossOrigin\":\"\",\"cropX\":0,\"cropY\":0,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false,\"src\":\"https://dummyimage.com/1200x400/000/fff\",\"filters\":[]},{\"type\":\"image\",\"version\":\"3.5.0\",\"originX\":\"left\",\"originY\":\"top\",\"left\":0,\"top\":0,\"width\":600,\"height\":400,\"fill\":\"rgb(0,0,0)\",\"stroke\":null,\"strokeWidth\":0,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1,\"scaleY\":1,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"crossOrigin\":\"\",\"cropX\":0,\"cropY\":0,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false,\"src\":\"https://dummyimage.com/600x400/000/fff\",\"filters\":[]},{\"type\":\"image\",\"version\":\"3.5.0\",\"originX\":\"left\",\"originY\":\"top\",\"left\":0,\"top\":0,\"width\":400,\"height\":1200,\"fill\":\"rgb(0,0,0)\",\"stroke\":null,\"strokeWidth\":0,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1,\"scaleY\":1,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"crossOrigin\":\"\",\"cropX\":0,\"cropY\":0,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false,\"src\":\"https://dummyimage.com/400x1200/000/fff\",\"filters\":[]},{\"type\":\"image\",\"version\":\"3.5.0\",\"originX\":\"left\",\"originY\":\"top\",\"left\":0,\"top\":0,\"width\":1200,\"height\":400,\"fill\":\"rgb(0,0,0)\",\"stroke\":null,\"strokeWidth\":0,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1,\"scaleY\":1,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"crossOrigin\":\"\",\"cropX\":0,\"cropY\":0,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false,\"src\":\"https://dummyimage.com/1200x400/000/fff\",\"filters\":[]},{\"type\":\"group\",\"version\":\"3.5.0\",\"originX\":\"left\",\"originY\":\"top\",\"left\":148,\"top\":77,\"width\":43,\"height\":43,\"fill\":\"rgb(0,0,0)\",\"stroke\":null,\"strokeWidth\":0,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1,\"scaleY\":1,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false,\"objects\":[{\"type\":\"circle\",\"version\":\"3.5.0\",\"originX\":\"left\",\"originY\":\"top\",\"left\":-21.5,\"top\":-21.5,\"width\":40,\"height\":40,\"fill\":\"#fff\",\"stroke\":\"black\",\"strokeWidth\":3,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1,\"scaleY\":1,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"radius\":20,\"startAngle\":0,\"endAngle\":6.283185307179586,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false},{\"type\":\"i-text\",\"version\":\"3.5.0\",\"originX\":\"center\",\"originY\":\"center\",\"left\":0.5,\"top\":0.5,\"width\":23.34228515625,\"height\":16.949999999999996,\"fill\":\"rgb(0,0,0)\",\"stroke\":null,\"strokeWidth\":1,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1,\"scaleY\":1,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"text\":\"P38\",\"fontSize\":15,\"fontWeight\":\"normal\",\"fontFamily\":\"Times New Roman\",\"fontStyle\":\"normal\",\"lineHeight\":1.16,\"underline\":false,\"overline\":false,\"linethrough\":false,\"textAlign\":\"center\",\"textBackgroundColor\":\"\",\"charSpacing\":0,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false,\"styles\":{}}]},{\"type\":\"group\",\"version\":\"3.5.0\",\"originX\":\"left\",\"originY\":\"top\",\"left\":409,\"top\":20.000000000000004,\"width\":43,\"height\":43,\"fill\":\"rgb(0,0,0)\",\"stroke\":null,\"strokeWidth\":0,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1.0930232558139537,\"scaleY\":1.0930232558139537,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false,\"objects\":[{\"type\":\"circle\",\"version\":\"3.5.0\",\"originX\":\"left\",\"originY\":\"top\",\"left\":-21.5,\"top\":-21.5,\"width\":40,\"height\":40,\"fill\":\"#f55\",\"stroke\":\"black\",\"strokeWidth\":3,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1,\"scaleY\":1,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"radius\":20,\"startAngle\":0,\"endAngle\":6.283185307179586,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false},{\"type\":\"i-text\",\"version\":\"3.5.0\",\"originX\":\"center\",\"originY\":\"center\",\"left\":0.5,\"top\":0.5,\"width\":30.84228515625,\"height\":16.949999999999996,\"fill\":\"rgb(0,0,0)\",\"stroke\":null,\"strokeWidth\":1,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1,\"scaleY\":1,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"text\":\"P450\",\"fontSize\":15,\"fontWeight\":\"normal\",\"fontFamily\":\"Times New Roman\",\"fontStyle\":\"normal\",\"lineHeight\":1.16,\"underline\":false,\"overline\":false,\"linethrough\":false,\"textAlign\":\"center\",\"textBackgroundColor\":\"\",\"charSpacing\":0,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false,\"styles\":{}}]},{\"type\":\"group\",\"version\":\"3.5.0\",\"originX\":\"left\",\"originY\":\"top\",\"left\":103,\"top\":250,\"width\":43,\"height\":43,\"fill\":\"rgb(0,0,0)\",\"stroke\":null,\"strokeWidth\":0,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1,\"scaleY\":1,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false,\"objects\":[{\"type\":\"circle\",\"version\":\"3.5.0\",\"originX\":\"left\",\"originY\":\"top\",\"left\":-21.5,\"top\":-21.5,\"width\":40,\"height\":40,\"fill\":\"#fff\",\"stroke\":\"black\",\"strokeWidth\":3,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1,\"scaleY\":1,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"radius\":20,\"startAngle\":0,\"endAngle\":6.283185307179586,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false},{\"type\":\"i-text\",\"version\":\"3.5.0\",\"originX\":\"center\",\"originY\":\"center\",\"left\":0.5,\"top\":0.5,\"width\":23.34228515625,\"height\":16.949999999999996,\"fill\":\"rgb(0,0,0)\",\"stroke\":null,\"strokeWidth\":1,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1,\"scaleY\":1,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"text\":\"P46\",\"fontSize\":15,\"fontWeight\":\"normal\",\"fontFamily\":\"Times New Roman\",\"fontStyle\":\"normal\",\"lineHeight\":1.16,\"underline\":false,\"overline\":false,\"linethrough\":false,\"textAlign\":\"center\",\"textBackgroundColor\":\"\",\"charSpacing\":0,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false,\"styles\":{}}]},{\"type\":\"group\",\"version\":\"3.5.0\",\"originX\":\"left\",\"originY\":\"top\",\"left\":1040,\"top\":76,\"width\":43,\"height\":43,\"fill\":\"rgb(0,0,0)\",\"stroke\":null,\"strokeWidth\":0,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1,\"scaleY\":1,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false,\"objects\":[{\"type\":\"circle\",\"version\":\"3.5.0\",\"originX\":\"left\",\"originY\":\"top\",\"left\":-21.5,\"top\":-21.5,\"width\":40,\"height\":40,\"fill\":\"#f55\",\"stroke\":\"black\",\"strokeWidth\":3,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1,\"scaleY\":1,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"radius\":20,\"startAngle\":0,\"endAngle\":6.283185307179586,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false},{\"type\":\"i-text\",\"version\":\"3.5.0\",\"originX\":\"center\",\"originY\":\"center\",\"left\":0.5,\"top\":0.5,\"width\":25.83251953125,\"height\":16.949999999999996,\"fill\":\"rgb(0,0,0)\",\"stroke\":null,\"strokeWidth\":1,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1,\"scaleY\":1,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"text\":\"H34\",\"fontSize\":15,\"fontWeight\":\"normal\",\"fontFamily\":\"Times New Roman\",\"fontStyle\":\"normal\",\"lineHeight\":1.16,\"underline\":false,\"overline\":false,\"linethrough\":false,\"textAlign\":\"center\",\"textBackgroundColor\":\"\",\"charSpacing\":0,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false,\"styles\":{}}]}],\"width\":1200,\"height\":400}', '', 'https://dummyimage.com/1200x400/000/fff'),
(2, '', '', '', 'https://dummyimage.com/600x400/000/fff'),
(3, '', '', '', 'https://dummyimage.com/400x1200/000/fff'),
(4, '', '', '', 'https://dummyimage.com/1200x400/000/fff'),
(5, '', '{\"version\":\"3.5.0\",\"objects\":[{\"type\":\"image\",\"version\":\"3.5.0\",\"originX\":\"left\",\"originY\":\"top\",\"left\":0,\"top\":0,\"width\":1500,\"height\":400,\"fill\":\"rgb(0,0,0)\",\"stroke\":null,\"strokeWidth\":0,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1,\"scaleY\":1,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"crossOrigin\":\"\",\"cropX\":0,\"cropY\":0,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false,\"src\":\"https://dummyimage.com/1500x400/000/fff\",\"filters\":[]},{\"type\":\"group\",\"version\":\"3.5.0\",\"originX\":\"left\",\"originY\":\"top\",\"left\":1450.7609414847536,\"top\":167.92056455383437,\"width\":43,\"height\":43,\"fill\":\"rgb(0,0,0)\",\"stroke\":null,\"strokeWidth\":0,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1.2199525993070808,\"scaleY\":1.143737174656884,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false,\"objects\":[{\"type\":\"circle\",\"version\":\"3.5.0\",\"originX\":\"left\",\"originY\":\"top\",\"left\":-21.5,\"top\":-21.5,\"width\":40,\"height\":40,\"fill\":\"#f55\",\"stroke\":\"black\",\"strokeWidth\":3,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1,\"scaleY\":1,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"radius\":20,\"startAngle\":0,\"endAngle\":6.283185307179586,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false},{\"type\":\"i-text\",\"version\":\"3.5.0\",\"originX\":\"center\",\"originY\":\"center\",\"left\":0.5,\"top\":0.5,\"width\":25.83251953125,\"height\":16.949999999999996,\"fill\":\"rgb(0,0,0)\",\"stroke\":null,\"strokeWidth\":1,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1,\"scaleY\":1,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"text\":\"H32\",\"fontSize\":15,\"fontWeight\":\"normal\",\"fontFamily\":\"Times New Roman\",\"fontStyle\":\"normal\",\"lineHeight\":1.16,\"underline\":false,\"overline\":false,\"linethrough\":false,\"textAlign\":\"center\",\"textBackgroundColor\":\"\",\"charSpacing\":0,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false,\"styles\":{}}]},{\"type\":\"group\",\"version\":\"3.5.0\",\"originX\":\"left\",\"originY\":\"top\",\"left\":-2.3841263078775228,\"top\":162.06524821046582,\"width\":43,\"height\":43,\"fill\":\"rgb(0,0,0)\",\"stroke\":null,\"strokeWidth\":0,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1,\"scaleY\":1,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false,\"objects\":[{\"type\":\"circle\",\"version\":\"3.5.0\",\"originX\":\"left\",\"originY\":\"top\",\"left\":-21.5,\"top\":-21.5,\"width\":40,\"height\":40,\"fill\":\"#fff\",\"stroke\":\"black\",\"strokeWidth\":3,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1,\"scaleY\":1,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"radius\":20,\"startAngle\":0,\"endAngle\":6.283185307179586,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false},{\"type\":\"i-text\",\"version\":\"3.5.0\",\"originX\":\"center\",\"originY\":\"center\",\"left\":0.5,\"top\":0.5,\"width\":23.34228515625,\"height\":16.949999999999996,\"fill\":\"rgb(0,0,0)\",\"stroke\":null,\"strokeWidth\":1,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1,\"scaleY\":1,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"text\":\"P43\",\"fontSize\":15,\"fontWeight\":\"normal\",\"fontFamily\":\"Times New Roman\",\"fontStyle\":\"normal\",\"lineHeight\":1.16,\"underline\":false,\"overline\":false,\"linethrough\":false,\"textAlign\":\"center\",\"textBackgroundColor\":\"\",\"charSpacing\":0,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false,\"styles\":{}}]},{\"type\":\"group\",\"version\":\"3.5.0\",\"originX\":\"left\",\"originY\":\"top\",\"left\":519.0534878564008,\"top\":182.36686390532543,\"width\":43,\"height\":43,\"fill\":\"rgb(0,0,0)\",\"stroke\":null,\"strokeWidth\":0,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1,\"scaleY\":1,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false,\"objects\":[{\"type\":\"circle\",\"version\":\"3.5.0\",\"originX\":\"left\",\"originY\":\"top\",\"left\":-21.5,\"top\":-21.5,\"width\":40,\"height\":40,\"fill\":\"#f55\",\"stroke\":\"black\",\"strokeWidth\":3,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1,\"scaleY\":1,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"radius\":20,\"startAngle\":0,\"endAngle\":6.283185307179586,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false},{\"type\":\"i-text\",\"version\":\"3.5.0\",\"originX\":\"center\",\"originY\":\"center\",\"left\":0.5,\"top\":0.5,\"width\":25.83251953125,\"height\":16.949999999999996,\"fill\":\"rgb(0,0,0)\",\"stroke\":null,\"strokeWidth\":1,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1,\"scaleY\":1,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"text\":\"H33\",\"fontSize\":15,\"fontWeight\":\"normal\",\"fontFamily\":\"Times New Roman\",\"fontStyle\":\"normal\",\"lineHeight\":1.16,\"underline\":false,\"overline\":false,\"linethrough\":false,\"textAlign\":\"center\",\"textBackgroundColor\":\"\",\"charSpacing\":0,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false,\"styles\":{}}]},{\"type\":\"group\",\"version\":\"3.5.0\",\"originX\":\"left\",\"originY\":\"top\",\"left\":973.0392536349323,\"top\":179.92699999999996,\"width\":43,\"height\":43,\"fill\":\"rgb(0,0,0)\",\"stroke\":null,\"strokeWidth\":0,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1,\"scaleY\":1,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false,\"objects\":[{\"type\":\"circle\",\"version\":\"3.5.0\",\"originX\":\"left\",\"originY\":\"top\",\"left\":-21.5,\"top\":-21.5,\"width\":40,\"height\":40,\"fill\":\"#fff\",\"stroke\":\"black\",\"strokeWidth\":3,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1,\"scaleY\":1,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"radius\":20,\"startAngle\":0,\"endAngle\":6.283185307179586,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false},{\"type\":\"i-text\",\"version\":\"3.5.0\",\"originX\":\"center\",\"originY\":\"center\",\"left\":0.5,\"top\":0.5,\"width\":23.34228515625,\"height\":16.949999999999996,\"fill\":\"rgb(0,0,0)\",\"stroke\":null,\"strokeWidth\":1,\"strokeDashArray\":null,\"strokeLineCap\":\"butt\",\"strokeDashOffset\":0,\"strokeLineJoin\":\"miter\",\"strokeMiterLimit\":4,\"scaleX\":1,\"scaleY\":1,\"angle\":0,\"flipX\":false,\"flipY\":false,\"opacity\":1,\"shadow\":null,\"visible\":true,\"clipTo\":null,\"backgroundColor\":\"\",\"fillRule\":\"nonzero\",\"paintFirst\":\"fill\",\"globalCompositeOperation\":\"source-over\",\"transformMatrix\":null,\"skewX\":0,\"skewY\":0,\"text\":\"P44\",\"fontSize\":15,\"fontWeight\":\"normal\",\"fontFamily\":\"Times New Roman\",\"fontStyle\":\"normal\",\"lineHeight\":1.16,\"underline\":false,\"overline\":false,\"linethrough\":false,\"textAlign\":\"center\",\"textBackgroundColor\":\"\",\"charSpacing\":0,\"lockMovementX\":false,\"lockMovementY\":false,\"lockRotation\":false,\"lockScalingX\":false,\"lockScalingY\":false,\"lockUniScaling\":false,\"styles\":{}}]}],\"width\":1499.9999999999989,\"height\":399.99999999999983}', '', 'https://dummyimage.com/1500x400/000/fff');

-- --------------------------------------------------------

--
-- Table structure for table `client_master`
--

DROP TABLE IF EXISTS `client_master`;
CREATE TABLE IF NOT EXISTS `client_master` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(20) NOT NULL,
  `cStatus` char(5) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_master`
--

INSERT INTO `client_master` (`client_id`, `client_name`, `cStatus`) VALUES
(1, 'SINGAPORE', 'A'),
(2, 'GERMANY', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `file_records`
--

DROP TABLE IF EXISTS `file_records`;
CREATE TABLE IF NOT EXISTS `file_records` (
  `file_id` int(11) NOT NULL,
  `survey_date` datetime NOT NULL,
  `expert_co` text NOT NULL,
  `removed_date` datetime NOT NULL,
  `removed_comp` text NOT NULL,
  `location` text NOT NULL,
  `s_location` text NOT NULL,
  `items_detail` text NOT NULL,
  `remarks` text NOT NULL,
  `report_no` text NOT NULL,
  `check_pt` text NOT NULL,
  `n_removed` text NOT NULL,
  `n_ship` text NOT NULL,
  `asbestos` text NOT NULL,
  `pcb` text NOT NULL,
  `ods` text NOT NULL,
  `anti_fouling` text NOT NULL,
  `pfos` text NOT NULL,
  `cd` text NOT NULL,
  `cr6` text NOT NULL,
  `pb` text NOT NULL,
  `hg` text NOT NULL,
  `pbbs` text NOT NULL,
  `pbedes` text NOT NULL,
  `pcns` text NOT NULL,
  `radioactive` text NOT NULL,
  `sccps` text NOT NULL,
  `hbccd` text NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file_records`
--

INSERT INTO `file_records` (`file_id`, `survey_date`, `expert_co`, `removed_date`, `removed_comp`, `location`, `s_location`, `items_detail`, `remarks`, `report_no`, `check_pt`, `n_removed`, `n_ship`, `asbestos`, `pcb`, `ods`, `anti_fouling`, `pfos`, `cd`, `cr6`, `pb`, `hg`, `pbbs`, `pbedes`, `pcns`, `radioactive`, `sccps`, `hbccd`) VALUES
(3, '2019-01-01 00:00:00', 'CTI', '0000-00-00 00:00:00', '', 'Wheel House', '', 'Battery', '', 'MID 19-1223', 'A16', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', ''),
(4, '2019-01-01 00:00:00', 'CTI', '0000-00-00 00:00:00', '', 'Wheel House', '', 'Battery', '', 'MID 19-1223', 'A19', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', ''),
(5, '2019-01-01 00:00:00', 'CTI', '0000-00-00 00:00:00', '', 'ER-Flat', '', 'Gasket', '', 'MID 19-1223', 'A32', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, '2019-01-01 00:00:00', 'CTI', '0000-00-00 00:00:00', '', 'ER-Flat', '', 'Gasket', '', 'MID 19-1223', 'A45', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, '2019-01-01 00:00:00', 'CTI', '0000-00-00 00:00:00', '', 'ER-Flat', '', 'Gasket', '', 'MID 19-1223', 'A46', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, '2019-01-01 00:00:00', 'CTI', '0000-00-00 00:00:00', '', 'ER-Flat', '', 'Gasket', '', 'MID 19-1223', 'A50', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, '2019-02-03 00:00:00', 'KIWI', '0000-00-00 00:00:00', '', 'Deck 2', '', 'Brake Lining', '', '', 'KM15', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, '2019-02-03 00:00:00', 'KIWA', '0000-00-00 00:00:00', '', 'Deck 2', '', 'Brake Lining', '', 'MA-018P003378', 'KM16', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, '2019-02-03 00:00:00', 'KIWA', '0000-00-00 00:00:00', '', 'E/R Workshop', '', 'Gasket', '', 'MA-018P003378', 'KM17', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, '2019-02-03 00:00:00', 'KIWA', '0000-00-00 00:00:00', '', 'E/R Workshop', '', 'Gasket', '', 'MA-018P003378', 'KM20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, '2019-02-03 00:00:00', 'KIWA', '0000-00-00 00:00:00', '', 'E/R ', '', 'Gasket', '', 'MA-018P003378', 'KM15', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, '2019-02-03 00:00:00', 'KIWA', '0000-00-00 00:00:00', '', 'E/R ', '', 'Gasket', '', 'MA-018P003378', 'KM20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, '2019-02-03 00:00:00', 'KIWA', '0000-00-00 00:00:00', '', 'ER-3rd Deck', '', 'Gasket', '', 'MA-018P003378', 'KM16', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, '2019-02-03 00:00:00', 'KIWA', '0000-00-00 00:00:00', '', 'E/R Workshop', '', 'Dust', '', 'MA-018P003378', 'KM25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, '2019-02-03 00:00:00', 'KIWA', '0000-00-00 00:00:00', '', 'E/R Workshop', '', 'Dust', '', 'MA-018P003378', 'KM27', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, '2019-02-03 00:00:00', 'KIWA', '0000-00-00 00:00:00', '', 'E/R Workshop', '', 'Dust', '', 'MA-018P003378', 'KM31', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(19, '2019-02-03 00:00:00', 'KIWA', '0000-00-00 00:00:00', '', 'Bosun Store', '', 'Gasket', '', 'MA-018P003378', 'KM50', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `fleet_report`
--

DROP TABLE IF EXISTS `fleet_report`;
CREATE TABLE IF NOT EXISTS `fleet_report` (
  `ship_id` int(45) NOT NULL AUTO_INCREMENT,
  `ship_name` text NOT NULL,
  `imo_no` text NOT NULL,
  `flag` text NOT NULL,
  `fleet_grp` text NOT NULL,
  `hazmat__survey_date` text NOT NULL,
  `next_survey` text NOT NULL,
  `next_removal` text NOT NULL,
  `port_of_removal` text NOT NULL,
  `yard_entry_date` text NOT NULL,
  `yard_loc` text NOT NULL,
  `c_h_found` text NOT NULL,
  `c_removed` text NOT NULL,
  `o_hazmats` text NOT NULL,
  `asbestos` text NOT NULL,
  `pcb` text NOT NULL,
  `ods` text NOT NULL,
  `anti_fouling` text NOT NULL,
  `pfos` text NOT NULL,
  `cd` text NOT NULL,
  `cr6+` text NOT NULL,
  `pb` text NOT NULL,
  `hg` text NOT NULL,
  `pbbs` text NOT NULL,
  `pbedes` text NOT NULL,
  `pcns` text NOT NULL,
  `radioactive` text NOT NULL,
  `sccps` text NOT NULL,
  `hbccd` text NOT NULL,
  PRIMARY KEY (`ship_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hazmat_series`
--

DROP TABLE IF EXISTS `hazmat_series`;
CREATE TABLE IF NOT EXISTS `hazmat_series` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `series` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hazmat_series`
--

INSERT INTO `hazmat_series` (`ID`, `series`) VALUES
(1, 1),
(2, 2),
(3, 23),
(4, 24),
(5, 25),
(6, 26),
(7, 27),
(8, 28),
(9, 29),
(10, 30),
(11, 31),
(12, 32),
(13, 33),
(14, 34);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `image_src` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_table`
--

DROP TABLE IF EXISTS `log_table`;
CREATE TABLE IF NOT EXISTS `log_table` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `log_time` text NOT NULL,
  `log_type` varchar(11) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=375 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_table`
--

INSERT INTO `log_table` (`log_id`, `file_id`, `user_id`, `log_time`, `log_type`) VALUES
(1, 1, 6, '2018-05-25 15:23:58', 'INSERT'),
(2, 2, 6, '2018-05-25 15:24:25', 'INSERT'),
(3, 1, 1, '2019-11-01 16:10:05', 'INSERT'),
(4, 1, 1, '2019-11-01 16:30:03', 'UPDATE'),
(5, 1, 1, '2019-11-01 16:37:40', 'UPDATE'),
(6, 2, 1, '2019-11-02 10:08:30', 'INSERT'),
(7, 2, 1, '2019-11-02 10:09:02', 'UPDATE'),
(8, 2, 1, '2019-11-02 10:10:05', 'UPDATE'),
(9, 2, 1, '2019-11-02 10:10:31', 'UPDATE'),
(10, 2, 1, '2019-11-02 10:10:56', 'UPDATE'),
(11, 2, 1, '2019-11-02 10:12:52', 'UPDATE'),
(12, 2, 1, '2019-11-02 10:14:41', 'UPDATE'),
(13, 2, 1, '2019-11-02 10:15:36', 'UPDATE'),
(14, 2, 1, '2019-11-02 10:16:31', 'UPDATE'),
(15, 2, 1, '2019-11-02 10:17:02', 'UPDATE'),
(16, 2, 1, '2019-11-02 10:17:32', 'UPDATE'),
(17, 2, 1, '2019-11-02 10:18:00', 'UPDATE'),
(18, 2, 1, '2019-11-02 10:18:41', 'UPDATE'),
(19, 2, 1, '2019-11-02 10:19:00', 'UPDATE'),
(20, 2, 1, '2019-11-02 10:19:24', 'UPDATE'),
(21, 2, 1, '2019-11-02 10:20:01', 'UPDATE'),
(22, 3, 1, '2019-11-02 10:48:29', 'INSERT'),
(23, 3, 1, '2019-11-02 10:48:56', 'UPDATE'),
(24, 3, 1, '2019-11-02 10:50:02', 'UPDATE'),
(25, 3, 1, '2019-11-02 10:50:37', 'UPDATE'),
(26, 3, 1, '2019-11-02 10:51:04', 'UPDATE'),
(27, 3, 1, '2019-11-02 10:51:32', 'UPDATE'),
(28, 3, 1, '2019-11-02 10:51:52', 'UPDATE'),
(29, 3, 1, '2019-11-02 10:52:17', 'UPDATE'),
(30, 3, 1, '2019-11-02 10:52:43', 'UPDATE'),
(31, 3, 1, '2019-11-02 10:53:05', 'UPDATE'),
(32, 3, 1, '2019-11-02 10:53:33', 'UPDATE'),
(33, 3, 1, '2019-11-02 10:53:55', 'UPDATE'),
(34, 3, 1, '2019-11-02 10:54:41', 'UPDATE'),
(35, 3, 1, '2019-11-02 10:55:17', 'UPDATE'),
(36, 3, 1, '2019-11-02 10:55:39', 'UPDATE'),
(37, 3, 1, '2019-11-02 10:56:05', 'UPDATE'),
(38, 4, 1, '2019-11-02 11:18:22', 'INSERT'),
(39, 5, 1, '2019-11-02 11:47:22', 'INSERT'),
(40, 6, 1, '2019-11-02 12:11:12', 'INSERT'),
(41, 7, 1, '2019-11-02 12:29:32', 'INSERT'),
(42, 8, 1, '2019-11-02 14:59:06', 'INSERT'),
(43, 9, 1, '2019-11-02 15:13:44', 'INSERT'),
(44, 10, 1, '2019-11-02 15:30:54', 'INSERT'),
(45, 11, 1, '2019-11-02 15:44:26', 'INSERT'),
(46, 12, 1, '2019-11-02 16:26:08', 'INSERT'),
(47, 12, 1, '2019-11-02 16:30:41', 'UPDATE'),
(48, 12, 1, '2019-11-02 16:37:27', 'UPDATE'),
(49, 13, 1, '2019-11-02 17:08:15', 'INSERT'),
(50, 2, 1, '2019-11-02 17:19:25', 'UPDATE'),
(51, 2, 1, '2019-11-02 17:32:52', 'UPDATE'),
(52, 14, 1, '2019-11-04 09:51:38', 'INSERT'),
(53, 15, 1, '2019-11-04 10:14:20', 'INSERT'),
(54, 2, 1, '2019-11-04 10:35:46', 'UPDATE'),
(55, 16, 1, '2019-11-04 10:41:18', 'INSERT'),
(56, 17, 1, '2019-11-04 11:10:56', 'INSERT'),
(57, 17, 1, '2019-11-04 11:13:05', 'UPDATE'),
(58, 17, 1, '2019-11-04 11:16:38', 'UPDATE'),
(59, 17, 1, '2019-11-04 11:17:04', 'UPDATE'),
(60, 18, 1, '2019-11-04 11:37:31', 'INSERT'),
(61, 18, 1, '2019-11-04 11:40:07', 'UPDATE'),
(62, 19, 1, '2019-11-04 11:58:11', 'INSERT'),
(63, 19, 1, '2019-11-04 11:58:55', 'UPDATE'),
(64, 19, 1, '2019-11-04 11:59:58', 'UPDATE'),
(65, 19, 1, '2019-11-04 12:01:48', 'UPDATE'),
(66, 20, 1, '2019-11-04 12:20:14', 'INSERT'),
(67, 21, 1, '2019-11-04 12:36:01', 'INSERT'),
(68, 21, 1, '2019-11-04 12:38:59', 'UPDATE'),
(69, 22, 1, '2019-11-04 13:04:40', 'INSERT'),
(70, 22, 1, '2019-11-04 13:05:32', 'UPDATE'),
(71, 22, 1, '2019-11-04 13:05:56', 'UPDATE'),
(72, 22, 1, '2019-11-04 13:08:15', 'UPDATE'),
(73, 22, 1, '2019-11-04 14:12:43', 'UPDATE'),
(74, 22, 1, '2019-11-04 14:16:54', 'UPDATE'),
(75, 23, 1, '2019-11-04 14:27:26', 'INSERT'),
(76, 23, 1, '2019-11-04 14:32:04', 'UPDATE'),
(77, 24, 1, '2019-11-04 14:41:47', 'INSERT'),
(78, 25, 1, '2019-11-04 14:53:59', 'INSERT'),
(79, 26, 1, '2019-11-04 15:14:07', 'INSERT'),
(80, 27, 1, '2019-11-04 15:42:16', 'INSERT'),
(81, 27, 1, '2019-11-04 15:43:49', 'UPDATE'),
(82, 28, 1, '2019-11-04 16:06:42', 'INSERT'),
(83, 28, 1, '2019-11-04 16:09:01', 'UPDATE'),
(84, 29, 1, '2019-11-04 16:35:07', 'INSERT'),
(85, 30, 1, '2019-11-04 16:54:52', 'INSERT'),
(86, 31, 1, '2019-11-04 17:14:11', 'INSERT'),
(87, 13, 1, '2019-11-04 17:51:25', 'UPDATE'),
(88, 1, 1, '2019-11-05 09:41:10', 'UPDATE'),
(89, 2, 1, '2019-11-05 09:47:16', 'UPDATE'),
(90, 3, 1, '2019-11-05 09:50:30', 'UPDATE'),
(91, 5, 1, '2019-11-05 09:56:27', 'UPDATE'),
(92, 6, 1, '2019-11-05 09:58:41', 'UPDATE'),
(93, 7, 1, '2019-11-05 10:03:30', 'UPDATE'),
(94, 10, 1, '2019-11-05 10:16:25', 'UPDATE'),
(95, 12, 1, '2019-11-05 10:20:48', 'UPDATE'),
(96, 13, 1, '2019-11-05 10:29:11', 'UPDATE'),
(97, 13, 1, '2019-11-05 10:30:22', 'UPDATE'),
(98, 13, 1, '2019-11-05 10:34:13', 'UPDATE'),
(99, 32, 1, '2019-11-05 10:51:58', 'INSERT'),
(100, 33, 1, '2019-11-05 11:30:15', 'INSERT'),
(101, 33, 1, '2019-11-05 11:33:48', 'UPDATE'),
(102, 34, 1, '2019-11-05 12:10:00', 'INSERT'),
(103, 35, 1, '2019-11-05 12:32:13', 'INSERT'),
(104, 35, 1, '2019-11-05 12:33:06', 'UPDATE'),
(105, 35, 1, '2019-11-05 12:33:23', 'UPDATE'),
(106, 35, 1, '2019-11-05 12:33:45', 'UPDATE'),
(107, 35, 1, '2019-11-05 12:34:18', 'UPDATE'),
(108, 36, 1, '2019-11-05 12:50:53', 'INSERT'),
(109, 36, 1, '2019-11-05 12:51:15', 'UPDATE'),
(110, 36, 1, '2019-11-05 12:51:42', 'UPDATE'),
(111, 36, 1, '2019-11-05 12:52:06', 'UPDATE'),
(112, 36, 1, '2019-11-05 12:52:24', 'UPDATE'),
(113, 37, 1, '2019-11-05 14:10:37', 'INSERT'),
(114, 38, 1, '2019-11-05 14:25:20', 'INSERT'),
(115, 39, 1, '2019-11-05 14:44:54', 'INSERT'),
(116, 40, 1, '2019-11-05 15:03:20', 'INSERT'),
(117, 41, 1, '2019-11-05 15:15:04', 'INSERT'),
(118, 42, 1, '2019-11-05 15:42:25', 'INSERT'),
(119, 43, 1, '2019-11-05 15:54:41', 'INSERT'),
(120, 43, 1, '2019-11-05 16:05:21', 'UPDATE'),
(121, 44, 1, '2019-11-05 16:32:31', 'INSERT'),
(122, 45, 1, '2019-11-05 16:44:48', 'INSERT'),
(123, 46, 1, '2019-11-05 17:04:45', 'INSERT'),
(124, 47, 1, '2019-11-05 17:19:20', 'INSERT'),
(125, 47, 1, '2019-11-05 17:21:26', 'UPDATE'),
(126, 47, 1, '2019-11-05 17:27:49', 'UPDATE'),
(127, 47, 1, '2019-11-05 17:28:21', 'UPDATE'),
(128, 47, 1, '2019-11-05 17:28:43', 'UPDATE'),
(129, 47, 1, '2019-11-05 17:29:05', 'UPDATE'),
(130, 47, 1, '2019-11-05 17:29:33', 'UPDATE'),
(131, 47, 1, '2019-11-05 17:29:48', 'UPDATE'),
(132, 48, 1, '2019-11-06 10:41:29', 'INSERT'),
(133, 48, 1, '2019-11-06 10:42:32', 'UPDATE'),
(134, 48, 1, '2019-11-06 10:42:56', 'UPDATE'),
(135, 48, 1, '2019-11-06 10:43:14', 'UPDATE'),
(136, 48, 1, '2019-11-06 10:43:38', 'UPDATE'),
(137, 48, 1, '2019-11-06 10:45:43', 'UPDATE'),
(138, 48, 1, '2019-11-06 10:45:56', 'UPDATE'),
(139, 48, 1, '2019-11-06 10:46:12', 'UPDATE'),
(140, 48, 1, '2019-11-06 10:46:24', 'UPDATE'),
(141, 49, 1, '2019-11-06 11:19:27', 'INSERT'),
(142, 48, 1, '2019-11-06 11:59:40', 'UPDATE'),
(143, 50, 1, '2019-11-06 12:28:42', 'INSERT'),
(144, 51, 1, '2019-11-06 12:48:11', 'INSERT'),
(145, 51, 1, '2019-11-06 12:50:14', 'UPDATE'),
(146, 49, 1, '2019-11-06 12:51:03', 'UPDATE'),
(147, 52, 1, '2019-11-06 13:11:03', 'INSERT'),
(148, 52, 1, '2019-11-06 14:05:41', 'UPDATE'),
(149, 52, 1, '2019-11-06 14:07:31', 'UPDATE'),
(150, 53, 1, '2019-11-06 14:47:59', 'INSERT'),
(151, 53, 1, '2019-11-06 14:50:01', 'UPDATE'),
(152, 53, 1, '2019-11-06 14:53:09', 'UPDATE'),
(153, 54, 1, '2019-11-06 15:07:53', 'INSERT'),
(154, 55, 1, '2019-11-06 15:27:57', 'INSERT'),
(155, 56, 1, '2019-11-06 15:50:18', 'INSERT'),
(156, 56, 1, '2019-11-06 15:50:38', 'UPDATE'),
(157, 56, 1, '2019-11-06 15:53:35', 'UPDATE'),
(158, 56, 1, '2019-11-06 15:56:01', 'UPDATE'),
(159, 57, 1, '2019-11-06 16:15:49', 'INSERT'),
(160, 57, 1, '2019-11-06 16:21:39', 'UPDATE'),
(161, 58, 1, '2019-11-06 16:32:41', 'INSERT'),
(162, 58, 1, '2019-11-06 16:33:24', 'UPDATE'),
(163, 58, 1, '2019-11-06 16:37:14', 'UPDATE'),
(164, 58, 1, '2019-11-06 16:41:31', 'UPDATE'),
(165, 58, 1, '2019-11-06 16:41:45', 'UPDATE'),
(166, 58, 1, '2019-11-06 16:43:58', 'UPDATE'),
(167, 59, 1, '2019-11-06 16:50:54', 'INSERT'),
(168, 59, 1, '2019-11-06 16:51:54', 'UPDATE'),
(169, 60, 1, '2019-11-06 17:13:46', 'INSERT'),
(170, 60, 1, '2019-11-06 17:16:39', 'UPDATE'),
(171, 60, 1, '2019-11-06 17:19:17', 'UPDATE'),
(172, 61, 1, '2019-11-06 17:30:09', 'INSERT'),
(173, 61, 1, '2019-11-06 17:33:52', 'UPDATE'),
(174, 61, 1, '2019-11-06 17:37:10', 'UPDATE'),
(175, 62, 1, '2019-11-06 17:57:20', 'INSERT'),
(176, 63, 1, '2019-11-07 09:52:57', 'INSERT'),
(177, 63, 1, '2019-11-07 09:53:47', 'UPDATE'),
(178, 64, 1, '2019-11-07 10:22:00', 'INSERT'),
(179, 64, 1, '2019-11-07 10:23:39', 'UPDATE'),
(180, 65, 1, '2019-11-07 10:56:36', 'INSERT'),
(181, 65, 1, '2019-11-07 10:56:56', 'UPDATE'),
(182, 65, 1, '2019-11-07 10:57:43', 'UPDATE'),
(183, 65, 1, '2019-11-07 10:57:56', 'UPDATE'),
(184, 65, 1, '2019-11-07 10:59:42', 'UPDATE'),
(185, 65, 1, '2019-11-07 11:02:47', 'UPDATE'),
(186, 66, 1, '2019-11-07 11:21:40', 'INSERT'),
(187, 67, 1, '2019-11-07 11:35:21', 'INSERT'),
(188, 62, 1, '2019-11-07 11:40:33', 'UPDATE'),
(189, 68, 1, '2019-11-07 11:50:24', 'INSERT'),
(190, 67, 1, '2019-11-07 11:52:25', 'UPDATE'),
(191, 68, 1, '2019-11-07 11:52:37', 'UPDATE'),
(192, 69, 1, '2019-11-07 12:09:27', 'INSERT'),
(193, 70, 1, '2019-11-07 12:28:19', 'INSERT'),
(194, 71, 1, '2019-11-07 12:46:55', 'INSERT'),
(195, 72, 1, '2019-11-07 14:09:33', 'INSERT'),
(196, 73, 1, '2019-11-07 14:23:25', 'INSERT'),
(197, 74, 1, '2019-11-07 14:42:58', 'INSERT'),
(198, 75, 1, '2019-11-07 15:17:14', 'INSERT'),
(199, 75, 1, '2019-11-07 15:20:44', 'UPDATE'),
(200, 76, 1, '2019-11-07 15:42:24', 'INSERT'),
(201, 76, 1, '2019-11-07 15:42:50', 'UPDATE'),
(202, 76, 1, '2019-11-07 15:46:31', 'UPDATE'),
(203, 71, 1, '2019-11-07 16:23:52', 'UPDATE'),
(204, 77, 1, '2019-11-07 17:49:16', 'INSERT'),
(205, 77, 1, '2019-11-07 17:52:45', 'UPDATE'),
(206, 77, 1, '2019-11-07 17:52:46', 'UPDATE'),
(207, 77, 1, '2019-11-07 17:52:53', 'UPDATE'),
(208, 77, 1, '2019-11-08 10:25:58', 'UPDATE'),
(209, 77, 1, '2019-11-08 10:28:12', 'UPDATE'),
(210, 77, 1, '2019-11-08 10:30:03', 'UPDATE'),
(211, 77, 1, '2019-11-08 10:30:28', 'UPDATE'),
(212, 78, 1, '2019-11-08 11:24:18', 'INSERT'),
(213, 79, 1, '2019-11-08 11:40:42', 'INSERT'),
(214, 80, 1, '2019-11-08 11:54:05', 'INSERT'),
(215, 81, 1, '2019-11-08 12:11:32', 'INSERT'),
(216, 81, 1, '2019-11-08 12:16:20', 'UPDATE'),
(217, 82, 1, '2019-11-08 12:28:41', 'INSERT'),
(218, 83, 1, '2019-11-08 12:39:56', 'INSERT'),
(219, 84, 1, '2019-11-08 12:49:58', 'INSERT'),
(220, 85, 1, '2019-11-08 14:34:51', 'INSERT'),
(221, 85, 1, '2019-11-08 14:36:59', 'UPDATE'),
(222, 85, 1, '2019-11-08 15:00:33', 'UPDATE'),
(223, 85, 1, '2019-11-08 15:01:03', 'UPDATE'),
(224, 86, 1, '2019-11-08 15:18:31', 'INSERT'),
(225, 86, 1, '2019-11-08 15:18:53', 'UPDATE'),
(226, 87, 1, '2019-11-08 15:33:33', 'INSERT'),
(227, 87, 1, '2019-11-08 15:34:29', 'UPDATE'),
(228, 88, 1, '2019-11-08 15:45:59', 'INSERT'),
(229, 88, 1, '2019-11-08 15:47:27', 'UPDATE'),
(230, 89, 1, '2019-11-08 15:55:18', 'INSERT'),
(231, 90, 1, '2019-11-08 16:11:38', 'INSERT'),
(232, 90, 1, '2019-11-08 16:12:55', 'UPDATE'),
(233, 91, 1, '2019-11-08 16:38:27', 'INSERT'),
(234, 92, 1, '2019-11-08 16:45:08', 'INSERT'),
(235, 93, 1, '2019-11-08 16:49:15', 'INSERT'),
(236, 94, 1, '2019-11-08 16:54:57', 'INSERT'),
(237, 95, 1, '2019-11-08 17:00:43', 'INSERT'),
(238, 96, 1, '2019-11-08 17:13:22', 'INSERT'),
(239, 96, 1, '2019-11-08 17:14:02', 'UPDATE'),
(240, 97, 1, '2019-11-08 17:31:45', 'INSERT'),
(241, 98, 1, '2019-11-08 17:37:49', 'INSERT'),
(242, 99, 1, '2019-11-08 17:45:47', 'INSERT'),
(243, 100, 1, '2019-11-09 10:01:54', 'INSERT'),
(244, 100, 1, '2019-11-09 10:03:40', 'UPDATE'),
(245, 100, 1, '2019-11-09 10:06:03', 'UPDATE'),
(246, 101, 1, '2019-11-09 10:21:27', 'INSERT'),
(247, 102, 1, '2019-11-09 10:27:15', 'INSERT'),
(248, 103, 1, '2019-11-09 10:33:52', 'INSERT'),
(249, 103, 1, '2019-11-09 10:35:26', 'UPDATE'),
(250, 104, 1, '2019-11-09 10:48:04', 'INSERT'),
(251, 104, 1, '2019-11-09 10:48:27', 'UPDATE'),
(252, 105, 1, '2019-11-09 11:02:15', 'INSERT'),
(253, 106, 1, '2019-11-09 11:09:18', 'INSERT'),
(254, 107, 1, '2019-11-09 11:17:56', 'INSERT'),
(255, 108, 1, '2019-11-09 11:22:11', 'INSERT'),
(256, 109, 1, '2019-11-09 11:32:39', 'INSERT'),
(257, 110, 1, '2019-11-09 11:41:42', 'INSERT'),
(258, 111, 1, '2019-11-09 12:06:55', 'INSERT'),
(259, 112, 1, '2019-11-09 12:41:20', 'INSERT'),
(260, 112, 1, '2019-11-09 12:42:56', 'UPDATE'),
(261, 112, 1, '2019-11-09 12:43:52', 'UPDATE'),
(262, 113, 1, '2019-11-09 12:51:30', 'INSERT'),
(263, 113, 1, '2019-11-09 12:52:17', 'UPDATE'),
(264, 113, 1, '2019-11-09 12:52:47', 'UPDATE'),
(265, 113, 1, '2019-11-09 12:54:13', 'UPDATE'),
(266, 113, 1, '2019-11-09 13:13:18', 'UPDATE'),
(267, 114, 1, '2019-11-09 14:02:26', 'INSERT'),
(268, 114, 1, '2019-11-09 14:03:14', 'UPDATE'),
(269, 115, 1, '2019-11-09 14:23:08', 'INSERT'),
(270, 115, 1, '2019-11-09 14:24:43', 'UPDATE'),
(271, 116, 1, '2019-11-09 14:33:32', 'INSERT'),
(272, 117, 1, '2019-11-09 14:38:34', 'INSERT'),
(273, 118, 1, '2019-11-09 14:52:07', 'INSERT'),
(274, 118, 1, '2019-11-09 14:53:23', 'UPDATE'),
(275, 119, 1, '2019-11-09 15:12:38', 'INSERT'),
(276, 119, 1, '2019-11-09 15:14:20', 'UPDATE'),
(277, 119, 1, '2019-11-09 15:15:18', 'UPDATE'),
(278, 120, 1, '2019-11-09 15:23:28', 'INSERT'),
(279, 121, 1, '2019-11-09 15:27:24', 'INSERT'),
(280, 121, 1, '2019-11-09 15:29:03', 'UPDATE'),
(281, 121, 1, '2019-11-09 15:38:43', 'UPDATE'),
(282, 122, 1, '2019-11-09 15:56:31', 'INSERT'),
(283, 123, 1, '2019-11-09 16:15:17', 'INSERT'),
(284, 123, 1, '2019-11-09 16:15:38', 'UPDATE'),
(285, 123, 1, '2019-11-09 16:16:25', 'UPDATE'),
(286, 123, 1, '2019-11-09 16:17:02', 'UPDATE'),
(287, 123, 1, '2019-11-09 16:17:34', 'UPDATE'),
(288, 123, 1, '2019-11-09 16:18:13', 'UPDATE'),
(289, 124, 1, '2019-11-09 16:31:13', 'INSERT'),
(290, 125, 1, '2019-11-09 16:49:23', 'INSERT'),
(291, 125, 1, '2019-11-09 16:50:52', 'UPDATE'),
(292, 125, 1, '2019-11-09 16:51:25', 'UPDATE'),
(293, 126, 1, '2019-11-11 10:13:34', 'INSERT'),
(294, 126, 1, '2019-11-11 10:15:17', 'UPDATE'),
(295, 126, 1, '2019-11-11 10:20:15', 'UPDATE'),
(296, 127, 1, '2019-11-11 10:29:03', 'INSERT'),
(297, 128, 1, '2019-11-11 10:35:59', 'INSERT'),
(298, 129, 1, '2019-11-11 10:43:37', 'INSERT'),
(299, 130, 1, '2019-11-11 10:47:31', 'INSERT'),
(300, 131, 1, '2019-11-11 10:53:38', 'INSERT'),
(301, 132, 1, '2019-11-11 10:56:26', 'INSERT'),
(302, 133, 1, '2019-11-11 11:06:54', 'INSERT'),
(303, 134, 1, '2019-11-11 11:12:42', 'INSERT'),
(304, 134, 1, '2019-11-11 11:13:03', 'UPDATE'),
(305, 135, 1, '2019-11-11 11:21:59', 'INSERT'),
(306, 136, 1, '2019-11-11 11:33:11', 'INSERT'),
(307, 136, 1, '2019-11-11 11:33:55', 'UPDATE'),
(308, 137, 1, '2019-11-11 11:41:11', 'INSERT'),
(309, 138, 1, '2019-11-11 11:52:33', 'INSERT'),
(310, 138, 1, '2019-11-11 11:53:27', 'UPDATE'),
(311, 139, 1, '2019-11-11 12:12:09', 'INSERT'),
(312, 139, 1, '2019-11-11 12:12:30', 'UPDATE'),
(313, 140, 1, '2019-11-11 12:17:38', 'INSERT'),
(314, 141, 1, '2019-11-11 12:26:24', 'INSERT'),
(315, 142, 1, '2019-11-11 12:32:58', 'INSERT'),
(316, 143, 1, '2019-11-11 12:52:21', 'INSERT'),
(317, 143, 1, '2019-11-11 12:54:07', 'UPDATE'),
(318, 144, 1, '2019-11-11 14:11:41', 'INSERT'),
(319, 145, 1, '2019-11-11 14:18:08', 'INSERT'),
(320, 146, 1, '2019-11-11 14:22:03', 'INSERT'),
(321, 147, 1, '2019-11-11 14:29:19', 'INSERT'),
(322, 148, 1, '2019-11-11 14:45:36', 'INSERT'),
(323, 148, 1, '2019-11-11 14:46:52', 'UPDATE'),
(324, 149, 1, '2019-11-11 14:55:16', 'INSERT'),
(325, 150, 1, '2019-11-11 15:01:16', 'INSERT'),
(326, 151, 1, '2019-11-11 15:11:09', 'INSERT'),
(327, 152, 1, '2019-11-11 15:16:11', 'INSERT'),
(328, 153, 1, '2019-11-11 15:26:09', 'INSERT'),
(329, 153, 1, '2019-11-11 15:26:30', 'UPDATE'),
(330, 154, 1, '2019-11-11 15:36:54', 'INSERT'),
(331, 155, 1, '2019-11-11 15:46:59', 'INSERT'),
(332, 155, 1, '2019-11-11 15:47:24', 'UPDATE'),
(333, 156, 1, '2019-11-11 15:52:10', 'INSERT'),
(334, 157, 1, '2019-11-11 15:57:57', 'INSERT'),
(335, 158, 1, '2019-11-11 16:06:07', 'INSERT'),
(336, 159, 1, '2019-11-11 16:09:16', 'INSERT'),
(337, 160, 1, '2019-11-11 16:18:29', 'INSERT'),
(338, 161, 1, '2019-11-11 16:41:43', 'INSERT'),
(339, 162, 1, '2019-11-11 16:57:44', 'INSERT'),
(340, 162, 1, '2019-11-11 16:58:56', 'UPDATE'),
(341, 163, 1, '2019-11-11 17:02:35', 'INSERT'),
(342, 164, 1, '2019-11-11 17:06:22', 'INSERT'),
(343, 165, 1, '2019-11-11 17:17:15', 'INSERT'),
(344, 166, 1, '2019-11-11 17:27:03', 'INSERT'),
(345, 167, 1, '2019-11-11 17:31:56', 'INSERT'),
(346, 168, 1, '2019-11-11 17:38:24', 'INSERT'),
(347, 169, 1, '2019-11-12 09:38:48', 'INSERT'),
(348, 170, 1, '2019-11-12 09:52:26', 'INSERT'),
(349, 171, 1, '2019-11-12 10:15:38', 'INSERT'),
(350, 172, 1, '2019-11-12 10:38:20', 'INSERT'),
(351, 172, 1, '2019-11-12 10:39:19', 'UPDATE'),
(352, 173, 1, '2019-11-12 10:55:28', 'INSERT'),
(353, 173, 1, '2019-11-12 10:55:53', 'UPDATE'),
(354, 113, 1, '2019-11-12 11:26:23', 'UPDATE'),
(355, 174, 1, '2019-11-12 11:49:29', 'INSERT'),
(356, 174, 1, '2019-11-12 11:50:51', 'UPDATE'),
(357, 175, 1, '2019-11-12 12:01:56', 'INSERT'),
(358, 175, 1, '2019-11-12 12:03:36', 'UPDATE'),
(359, 175, 1, '2019-11-12 12:05:09', 'UPDATE'),
(360, 176, 1, '2019-11-12 12:35:13', 'INSERT'),
(361, 177, 1, '2019-11-12 12:38:17', 'INSERT'),
(362, 178, 1, '2019-11-12 14:12:35', 'INSERT'),
(363, 179, 1, '2019-11-12 14:17:12', 'INSERT'),
(364, 180, 1, '2019-11-12 14:48:43', 'INSERT'),
(365, 181, 1, '2019-11-12 14:53:12', 'INSERT'),
(366, 182, 1, '2019-11-12 14:57:41', 'INSERT'),
(367, 183, 1, '2019-11-12 15:00:27', 'INSERT'),
(368, 184, 1, '2019-11-12 15:15:35', 'INSERT'),
(369, 185, 1, '2019-11-12 15:16:53', 'INSERT'),
(370, 186, 1, '2019-11-12 15:43:04', 'INSERT'),
(371, 187, 1, '2019-11-12 15:46:33', 'INSERT'),
(372, 188, 1, '2019-11-12 16:18:07', 'INSERT'),
(373, 189, 1, '2019-11-12 16:22:20', 'INSERT'),
(374, 1, 1, '2019-11-15 15:16:17', 'INSERT');

-- --------------------------------------------------------

--
-- Table structure for table `pdf`
--

DROP TABLE IF EXISTS `pdf`;
CREATE TABLE IF NOT EXISTS `pdf` (
  `pdf_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `plan_series`
--

DROP TABLE IF EXISTS `plan_series`;
CREATE TABLE IF NOT EXISTS `plan_series` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `series` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plan_series`
--

INSERT INTO `plan_series` (`ID`, `series`) VALUES
(3, 6),
(4, 7),
(5, 8),
(6, 9),
(7, 10),
(8, 21),
(9, 22),
(10, 23),
(11, 24),
(12, 25),
(13, 26),
(14, 27),
(15, 28),
(16, 29),
(17, 30),
(18, 31),
(19, 32),
(20, 33),
(21, 34),
(22, 35),
(23, 36),
(24, 37),
(25, 38),
(26, 39),
(27, 40),
(28, 41),
(29, 42),
(30, 43),
(31, 44),
(32, 45),
(33, 46),
(34, 47);

-- --------------------------------------------------------

--
-- Table structure for table `project_master`
--

DROP TABLE IF EXISTS `project_master`;
CREATE TABLE IF NOT EXISTS `project_master` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `pro_name` varchar(30) NOT NULL,
  `cStatus` char(5) NOT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `region_master`
--

DROP TABLE IF EXISTS `region_master`;
CREATE TABLE IF NOT EXISTS `region_master` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_id` int(11) NOT NULL,
  `v_name` text NOT NULL,
  `imo_no` int(11) NOT NULL,
  `flag` text NOT NULL,
  `f_grp_no` text NOT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `region_master`
--

INSERT INTO `region_master` (`r_id`, `file_id`, `v_name`, `imo_no`, `flag`, `f_grp_no`) VALUES
(1, 1, 'CC BUTTERFLY', 936590, 'GERMANY', ''),
(2, 2, 'CC  RIGOLETTO', 9299654, 'FRANCE', ''),
(3, 3, 'CC ROSINNI', 9280639, 'FRANCE', ''),
(4, 4, 'CC MOZART', 9280615, 'FRANCE', ''),
(5, 5, 'CC FIDELIO', 9299642, 'FRANCE', ''),
(6, 0, 'CC NABUCCO', 9299630, 'GERMANY', ''),
(7, 0, 'APL THAULAND', 9077123, 'LIBERIA', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

DROP TABLE IF EXISTS `user_table`;
CREATE TABLE IF NOT EXISTS `user_table` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `phno` varchar(255) DEFAULT NULL,
  `addr` varchar(1000) DEFAULT NULL,
  `dob` date NOT NULL,
  `username` text NOT NULL,
  `pass_word` text NOT NULL,
  `cStatus` char(5) NOT NULL,
  `user_type` varchar(5) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `r_id`, `name`, `email_id`, `phno`, `addr`, `dob`, `username`, `pass_word`, `cStatus`, `user_type`) VALUES
(1, 0, 'admin', 'admin@gmail.com', '8999789789', 'address', '1994-06-24', 'fleet', '98c1683eaea72a334affedfc647601e6f85cb8fa', 'A', 'A'),
(3, 0, 'SHIP1', '', '0', '', '0000-00-00', 'ship1', '1af64879c569dd95d049340a7a5323ac0ac20974', 'A', 'DE'),
(9, 0, 'ship2', '', '0', '', '0000-00-00', 'ship2', 'fef3261023abac0763c5a660f7a67a92781864c5', 'A', 'DE'),
(8, 2, 'user', 'user@rediffmail.com', '8806334425', 'addin', '0000-00-00', 'enduser', '8cb7abc0c598379dc6820deebc3c28cb09c02d7a', 'A', 'U');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
