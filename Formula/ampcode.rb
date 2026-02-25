class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772001895-g4267c7"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772001895-g4267c7/amp-darwin-arm64"
      sha256 "57f55ee10dfd7fe874a2da5751aaefe6d2a4df604a6cb6ab8d54a2bbaaea0705"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772001895-g4267c7/amp-darwin-x64"
      sha256 "784eb5616b21f8c8bb49476af256cafd3dd518bbfddb368e8580e203885ba598"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772001895-g4267c7/amp-linux-arm64"
      sha256 "55ce0bd53ada400e05738d953b2cb51b5780686fee45cea3447684ec5d346be3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772001895-g4267c7/amp-linux-x64"
      sha256 "11e9ab154fb829b50f1997a5825afb0d9e48fac8b11096f6b28ecebad1593eb5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
