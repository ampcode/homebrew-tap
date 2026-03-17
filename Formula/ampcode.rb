class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773719329-gb159f5"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773719329-gb159f5/amp-darwin-arm64"
      sha256 "1e554401797459666544a923cdd79ef4d547569c0a44b5e160924da354706727"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773719329-gb159f5/amp-darwin-x64"
      sha256 "f1d156d981500c79ee790a99e3f0de950416874e113fce7347a4fd582412e0ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773719329-gb159f5/amp-linux-arm64"
      sha256 "d509cd47531aedd3791abee8694ae1d00b28e078b5b248f16a64acbe8fed3268"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773719329-gb159f5/amp-linux-x64"
      sha256 "386aed64919e6df038f37955101e3e307795ee8efb59f5dff976204d9081b9dc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
