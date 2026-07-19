class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784450632-g1a33cd"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784450632-g1a33cd/amp-darwin-arm64"
      sha256 "178755151b7bcf6cd1be96d1b869158e4b97f7df48eb5e35b0d20488675390cf"
    else
      url "https://static.ampcode.com/cli/0.0.1784450632-g1a33cd/amp-darwin-x64"
      sha256 "f763737166d592a301aa7f184493ea232317bfa34efffd93cc83540a674ea7b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784450632-g1a33cd/amp-linux-arm64"
      sha256 "cb04c13eb629f0fdd989b95925fbc70a8d2c6abbfa4a00d7b9813d69488d0f30"
    else
      url "https://static.ampcode.com/cli/0.0.1784450632-g1a33cd/amp-linux-x64"
      sha256 "de6a8ccffe4c3aab24288bb41517c1ddecabab2548aa09471c0d6d1324b3ae50"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
