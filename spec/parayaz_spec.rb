require 'spec_helper'

describe Parayaz do
  context 'Test regular numbers' do
    it 'should return: birTL' do
      expect(1.parayaz).to eq 'birTL'
    end
    it 'should return: yüzonbirTL' do
      expect(111.parayaz).to eq 'yüzonbirTL'
    end
    it 'should return: binbeşyüzkırkbirTL' do
      expect(1541.parayaz).to eq 'binbeşyüzkırkbirTL'
    end
    
    # testing SHORT and LONG methods
    
    it 'should return: 35.0₺' do
      expect(35.SHORT(decimals=1)).to eq '35.0₺'
    end
    
    it 'should return: 27.00₺' do
      expect(27.SHORT(decimals=2)).to eq '27.00₺'
    end
    
    it 'should return: 45.0₺ (kırkbeşTL)' do
      expect(45.LONG(decimals=1)).to eq '45.0₺ (kırkbeşTL)'
    end
    
    it 'should return: 70.00₺ (yetmişTL)' do
      expect(70.LONG(decimals=2)).to eq '70.00₺ (yetmişTL)'
    end
  end

  context 'Test float numbers' do
    it 'should return: onikikr.' do
      expect(0.125.parayaz).to eq 'onikikr.'
    end
    it 'should return: birTL,onkr.' do
      expect(1.1.parayaz).to eq 'birTL,onkr.'
    end
    it 'should return: yüzyirmiüçTL,kırkbeşkr.' do
      expect(123.45.parayaz).to eq 'yüzyirmiüçTL,kırkbeşkr.'
    end
  end
  
  context 'Test big numbers' do
    it 'should return birmilyonüçyüzkırkikibindörtyüzotuzsekizTL' do
      expect(1342438.parayaz).to eq 'birmilyonüçyüzkırkikibindörtyüzotuzsekizTL'
    end
    it 'should return dokuzmilyarsekizyüzyetmişaltımilyonbeşyüzkırküçbinikiyüzonTL' do
      expect(9876543210.parayaz).to eq 'dokuzmilyarsekizyüzyetmişaltımilyonbeşyüzkırküçbinikiyüzonTL'
    end
    it 'should return sekiztrilyonyüzondokuzmilyarsekizyüzyetmişaltımilyonbeşyüzkırküçbinikiyüzonTL,onikikr.' do
      expect(8119876543210.123456.parayaz).to eq 'sekiztrilyonyüzondokuzmilyarsekizyüzyetmişaltımilyonbeşyüzkırküçbinikiyüzonTL,onikikr.'
    end
  end
  
  context 'Test negative numbers' do
    it 'should return eksi birTL' do
      expect(-1.parayaz).to eq 'eksi birTL'
    end
    it 'should return eksi on kr.' do
      expect(-0.1.parayaz).to eq 'eksi onkr.'
    end
    it 'should return eksi elli kr.' do
      expect(-0.5.parayaz).to eq 'eksi ellikr.'
    end
  end
  
end