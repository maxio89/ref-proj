package com.yartista.framework.business;

import java.util.Collection;

public abstract class EntityHome<E> extends pl.com.it_crowd.seam.framework.EntityHome<E> {
// -------------------------- OTHER METHODS --------------------------

    /**
     * Removed given elements.
     *
     * @param elements collection of elements to remove
     *
     * @return number of removed elements
     */
    public abstract int remove(Collection<E> elements);
}
