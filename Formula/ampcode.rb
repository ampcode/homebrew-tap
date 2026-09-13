class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789286439-g400075"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789286439-g400075/amp-darwin-arm64"
      sha256 "c171da6cb95ac40fb34721ea7e86e2f51d8a5cb63f78067c2f95ce5f56f86913"
    else
      url "https://static.ampcode.com/cli/0.0.1789286439-g400075/amp-darwin-x64"
      sha256 "ad9ccf3fc65546a3fe33cc1a1b7e4c54956cabb191deb4729dc13d93fe493fa3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789286439-g400075/amp-linux-arm64"
      sha256 "b37719ee8494560f8fdb872c3e40daed8e896186b4cd133fa11e4f7bbb0f063a"
    else
      url "https://static.ampcode.com/cli/0.0.1789286439-g400075/amp-linux-x64"
      sha256 "e668e38e78ae61b38749d47ed5fbac996d7295a0b3b2869282a2e83548f55bc1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
