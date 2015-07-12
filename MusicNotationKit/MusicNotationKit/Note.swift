//
//  Note.swift
//  MusicNotation
//
//  Created by Kyle Sherman on 6/12/15.
//  Copyright (c) 2015 Kyle Sherman. All rights reserved.
//

public struct Note {
	
	public let noteDuration: NoteDuration
	public let tones: [Tone]
	
	public let isRest: Bool
	
	public var dot: Dot = .None
	public var accent: Accent = .None
	public var isStaccato: Bool = false
	public var dynamics: Dynamics = .None
	public var striking: Striking = .None
	
	/**
	Initialize a rest.
	*/
	public init(noteDuration: NoteDuration) {
		self.noteDuration = noteDuration
		self.tones = []
		self.isRest = true
	}
	
	/**
	Initialize a note with a single tone.
	*/
	public init(noteDuration: NoteDuration, tone: Tone) {
		self.noteDuration = noteDuration
		self.tones = [tone]
		self.isRest = false
	}
	
	/**
	Initialize a note with multiple tones (chord).
	*/
	public init(noteDuration: NoteDuration, tones: [Tone]) {
		isRest = false
		self.noteDuration = noteDuration
		self.tones = tones
	}
}