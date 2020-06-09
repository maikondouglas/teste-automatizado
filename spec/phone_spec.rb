require 'phone'

RSpec.describe Phone do
  subject(:phone) { described_class.new(number) }
  describe '#valid_number?' do
    context 'Quando o número for válido' do
      context 'Quando o contexto contem número' do
        let(:number) {'1234'}

        it 'return true' do
          expect(phone.valid_number?).to eq(true)  
        end
      end
    end

    context 'Quando o número contem espaço' do
      let(:number) {'123 456'}

      it 'return true' do
        expect(phone.valid_number?).to eq(true)  
      end
    end 
  end

  context 'Quando o número é vázio' do
    let(:number) {''}

    it 'return false' do
      expect(phone.valid_number?).to eq(false)  
    end
  end 

  context 'Quando o número não for válido' do
    context 'Quando contém letras e não números' do
      let(:number) {'abcd'}

      it 'return false' do
        expect(phone.valid_number?).to eq(false)  
      end
    end
  end
end
