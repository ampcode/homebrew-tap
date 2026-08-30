class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788081614-ge19633"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788081614-ge19633/amp-darwin-arm64"
      sha256 "d84800f2cb54ac3cf217ec22af89d2fe2c414ff2fee0a3814c9a1a5d7df135ba"
    else
      url "https://static.ampcode.com/cli/0.0.1788081614-ge19633/amp-darwin-x64"
      sha256 "523da41c0dac2184ce2e9df3cc43c1080d4a5b405ce11f6538ee42e97cab0592"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788081614-ge19633/amp-linux-arm64"
      sha256 "38e4754c448cc66f3ee74e250b47638d4aa09b956fdb423b5fe60b76bec2dec5"
    else
      url "https://static.ampcode.com/cli/0.0.1788081614-ge19633/amp-linux-x64"
      sha256 "158bcd4416bfe99860d0b54b313a54857aca72e7b05c153d06db823897e8065c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
