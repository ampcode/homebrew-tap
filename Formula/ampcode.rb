class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773064534-g1fd498"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773064534-g1fd498/amp-darwin-arm64"
      sha256 "1fb119dd3e929c1c048d656df079b03a0f4106adc277fa0b9cb608996365a32e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773064534-g1fd498/amp-darwin-x64"
      sha256 "1e24438fa3219d6dc05d15a027256ae0cfe80829ddef423aa941126c44d12bb7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773064534-g1fd498/amp-linux-arm64"
      sha256 "408cc561434446fe43186f9ffe9060740c30d9ad0e046405996f3eeceeccfdd3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773064534-g1fd498/amp-linux-x64"
      sha256 "a60acad475e108c54ec3ad7d70c1265e2f6b49c4a74e2d25c626d33987a9b29b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
