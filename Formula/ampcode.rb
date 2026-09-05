class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788566489-g17fce3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788566489-g17fce3/amp-darwin-arm64"
      sha256 "c562e082a506dd7e0c0a7418b6ce2ba8d5c54c7cc25ff58f7a8a1a6980cdee25"
    else
      url "https://static.ampcode.com/cli/0.0.1788566489-g17fce3/amp-darwin-x64"
      sha256 "d2d35cc0cf60d94257fe51f02a8a9093651be62689562d94f5984678c79464fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788566489-g17fce3/amp-linux-arm64"
      sha256 "9d89bf5d00ce0ca70a71592fc53243c2bf0fca0d7ced584e4834a94eed8eee1b"
    else
      url "https://static.ampcode.com/cli/0.0.1788566489-g17fce3/amp-linux-x64"
      sha256 "8d5483f5de3002ad8648541dd16b4347dd80054ed696d989280582a93ffe048c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
