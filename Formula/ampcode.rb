class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792105747-g014c73"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792105747-g014c73/amp-darwin-arm64"
      sha256 "074fd456bcf4f4c8e577837c264cf38ef3d63adc2a108e305ca37e322c4cc431"
    else
      url "https://static.ampcode.com/cli/0.0.1792105747-g014c73/amp-darwin-x64"
      sha256 "a4e51e07a0e9b903db5192ca2316cb7234de1470c64c1bf68ae525a2159e2d90"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792105747-g014c73/amp-linux-arm64"
      sha256 "979670b106dfd2539a27baca115065bd601b64fd4bb186ced4fcd6ba019dd196"
    else
      url "https://static.ampcode.com/cli/0.0.1792105747-g014c73/amp-linux-x64"
      sha256 "c0b2aea5ad7614c61b02faf81e8a2a1a406cf9e01fa806eb3deddfaceeb2600f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
