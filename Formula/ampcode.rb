class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771488529-g484559"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771488529-g484559/amp-darwin-arm64"
      sha256 "eb669fa8295a7d68998d6369b738ca9b2e0e6ce2f431b56a729571ba5acb5e1b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771488529-g484559/amp-darwin-x64"
      sha256 "25cc92c13577d3d007db24de7db7bf7387bfd5a8aacc53900b179cfd784daef4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771488529-g484559/amp-linux-arm64"
      sha256 "5b9d999cfa401f027631e5d887ebc2008cbdb96b144e9dc668c76e47396cb0d7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771488529-g484559/amp-linux-x64"
      sha256 "4eb35e1802e7e2bd95b36c94356de9ec266c718721daf2d179d51af96d1d49af"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
