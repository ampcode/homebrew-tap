class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783685921-g88a58f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783685921-g88a58f/amp-darwin-arm64"
      sha256 "41bd6ce833798f7e14213ae5db53443380ac75984091518ebd3001e43fdaa60f"
    else
      url "https://static.ampcode.com/cli/0.0.1783685921-g88a58f/amp-darwin-x64"
      sha256 "a158472364ec0d5613e318b60c366bc80e7f849f0f8a6403d4f1678d8613e3be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783685921-g88a58f/amp-linux-arm64"
      sha256 "3b567973f35d5175b9baa34b5c9ddb6416400786e1b3cf9f2b20855506970050"
    else
      url "https://static.ampcode.com/cli/0.0.1783685921-g88a58f/amp-linux-x64"
      sha256 "2cb5e667bc09d6fcd857fa07a415b37e5a4be39c57fcf76021fbd6cefbd074ed"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
