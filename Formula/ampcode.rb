class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774279665-geeefea"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774279665-geeefea/amp-darwin-arm64"
      sha256 "6aca5dc4b37cdb971c666fec55dcf202abd24657b335b8724b2964d144ba6666"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774279665-geeefea/amp-darwin-x64"
      sha256 "306db5ada29991ac533e68c3f3cfd6d973ef34c1eeffe735f8ba49cc2e33f324"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774279665-geeefea/amp-linux-arm64"
      sha256 "6f222e797173331d24fa1e3a17cfb8024defbd77d572a9d3e301a069b7273dd8"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774279665-geeefea/amp-linux-x64"
      sha256 "caa877d2725acc55ce0f62ba1de1e10b32d468f04b38da122ff9ac1dc25ed899"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
