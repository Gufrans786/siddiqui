package org.bouncycastle.asn1.x509.qualified;

import androidx.exifinterface.media.ExifInterface;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import sa.lg.android.locate.BuildConfig;

public interface ETSIQCObjectIdentifiers {
    public static final ASN1ObjectIdentifier id_etsi_qcs;
    public static final ASN1ObjectIdentifier id_etsi_qcs_LimiteValue;
    public static final ASN1ObjectIdentifier id_etsi_qcs_QcCompliance;
    public static final ASN1ObjectIdentifier id_etsi_qcs_QcSSCD;
    public static final ASN1ObjectIdentifier id_etsi_qcs_RetentionPeriod;

    static {
        ASN1ObjectIdentifier aSN1ObjectIdentifier = new ASN1ObjectIdentifier("0.4.0.1862.1");
        id_etsi_qcs = aSN1ObjectIdentifier;
        id_etsi_qcs_QcCompliance = aSN1ObjectIdentifier.branch(BuildConfig.IOS_VERSION_CODE);
        id_etsi_qcs_LimiteValue = aSN1ObjectIdentifier.branch(ExifInterface.GPS_MEASUREMENT_2D);
        id_etsi_qcs_RetentionPeriod = aSN1ObjectIdentifier.branch(ExifInterface.GPS_MEASUREMENT_3D);
        id_etsi_qcs_QcSSCD = aSN1ObjectIdentifier.branch("4");
    }
}
