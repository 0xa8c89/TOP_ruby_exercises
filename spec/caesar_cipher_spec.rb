require './lib/caesar_cipher'

describe '#caesar_cipher' do
  it 'returns string with offset of 1' do
    expect(caesar_cipher('abcdefghijklmnopqrstuvwxyz', 1)).to eql('bcdefghijklmnopqrstuvwxyza')
  end
  it 'returns string with offset of 2' do
    expect(caesar_cipher('abcdefghijklmnopqrstuvwxyz', 2)).to eql('cdefghijklmnopqrstuvwxyzab')
  end
  it 'returns string with offset of 3' do
    expect(caesar_cipher('abcdefghijklmnopqrstuvwxyz', 3)).to eql('defghijklmnopqrstuvwxyzabc')
  end
  it 'returns string with offset of 4' do
    expect(caesar_cipher('abcdefghijklmnopqrstuvwxyz', 4)).to eql('efghijklmnopqrstuvwxyzabcd')
  end
  it 'returns string with offset of 5' do
    expect(caesar_cipher('abcdefghijklmnopqrstuvwxyz', 5)).to eql('fghijklmnopqrstuvwxyzabcde')
  end
  it 'returns string with offset of 6' do
    expect(caesar_cipher('abcdefghijklmnopqrstuvwxyz', 6)).to eql('ghijklmnopqrstuvwxyzabcdef')
  end
end
