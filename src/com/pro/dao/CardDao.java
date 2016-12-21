package com.pro.dao;

import com.pro.domain.Card;

public interface CardDao {

	public void createCard(Card card);
	
	public void updateCard(Card card);
	
	public Card findCardById(int cardId);	
	
}
