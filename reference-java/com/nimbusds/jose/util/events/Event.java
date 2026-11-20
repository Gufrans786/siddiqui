package com.nimbusds.jose.util.events;

import com.nimbusds.jose.proc.SecurityContext;

public interface Event<S, C extends SecurityContext> {
    C getContext();

    S getSource();
}
