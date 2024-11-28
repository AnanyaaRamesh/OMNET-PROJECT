package firstpoject.simulations;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.inet.StandardHost;


@license(LGPL);
//
// TODO documentation
//
network EthNet
{
    @display("bgb=460,289");
    submodules:
        client: StandardHost {
            @display("p=51,107");
        }
        server: StandardHost {
            @display("p=350,107");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=201,175");
        }
    connections:
        client.ethg++ <--> Eth100M <--> server.ethg++;
}

