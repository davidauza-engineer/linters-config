require 'rspec'

describe 'project setup' do
  context 'bin directory' do
    let(:directory) { 'bin' }
    let(:file) { File.join(directory, 'main.rb') }
    it 'should exist' do
      expect(File.directory?(directory)).to be true
    end
    it 'should contain only 1 file' do
      expect(Dir.children(directory).count).to eq 1
    end
    it 'should contain an executable "main.rb" file' do
      expect(File.executable?(file)).to be true
    end
    it 'should output "Hello world" to stdout when "bin/main.rb" is executed' do
      expect { system(file) }.to output("Hello world\n").to_stdout_from_any_process
    end
    it 'should not output to stderr when "bin/main.rb" is executed' do
      expect { system(file) }.to_not output.to_stderr_from_any_process
    end
  end
  context 'lib directory' do
    let(:directory) { 'lib' }
    it 'should exist' do
      expect(File.directory?(directory)).to be true
    end
    it 'should contain only 1 file' do
      expect(Dir.children(directory).count).to eq 1
    end
    it 'should contain an empty ".gitkeep" file' do
      expect(File.zero?(File.join(directory, '.gitkeep'))).to be true
    end
  end
end
